import 'dart:convert';
import 'dart:isolate';

import 'package:archive/archive.dart';
import 'package:archive/archive_io.dart';
import 'package:csv/csv.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:http/http.dart' as http;
import 'package:receipt_generator/src/entity/config/code_value_entity.dart';

import '../config/constants.dart';
import '../entity/pos/entity.dart';
import '../entity/pos/reason_code_entity.dart';

class SyncConfigRepository {
  final log = Logger('SyncConfigRepository');

  final Isar db;

  SyncConfigRepository({required this.db});

  Future<void> getDataFromServer() async {
    String url =
        "https://xpos-user-dev.s3.ap-south-1.amazonaws.com/config/config.zip";
    final response = await http.get(Uri.parse(url));

    // Decode the Zip file
    final archive = ZipDecoder().decodeBytes(response.bodyBytes);

    for (final file in archive) {
      final filename = file.name;
      log.info(filename);
      final data = file.content as List<int>;
      Stream<List<int>> input = Stream.fromIterable(data.map((e) => [e]));
      final fields = await input
          .transform(utf8.decoder)
          .transform(const CsvToListConverter())
          .toList();

      // Route Based on the filename
      if (filename.startsWith("CONFIG_")) {
        String name = filename.replaceFirst("CONFIG_", "");
        await _loadConfiguration(name, fields);
      } else if (filename.startsWith("REASON_CODE")) {
        await _loadReasonCode(fields);
      }
    }

    SyncEntity syncEntity = SyncEntity(
        type: "CODE_CONFIG",
        lastSyncAt: DateTime.now(),
        status: 1);
    await db.writeTxn(() async {
      await db.syncEntitys.putByIndex('type', syncEntity);
    });
  }

  Future<void> _loadReasonCode(List<List<dynamic>> fields) async {
    var res = await db.writeTxn(() async {
      for (int i = 0; i < fields.length; i++) {
        var c = fields[i];
        db.reasonCodeEntitys.put(
            ReasonCodeEntity(
              reasonTypeCode: c[0],
              reasonCode: c[1],
              description: c[2],
              parentCode: c[3],
              commentRequired: "Y" == c[4],
            ),);
      }
    });
  }

  Future<void> _loadConfiguration(
      String filename, List<List<dynamic>> fields) async {
    String category = filename.replaceAll(".csv", "");
    var res = await db.writeTxn(() async {
      for (int i = 1; i < fields.length; i++) {
        var c = fields[i];
        db.codeValueEntitys.putByIndex('category_code',
            CodeValueEntity(
                category: category,
                code: c[0].toString(),
                value: c[1].toString(),
                description: c[1].toString()),);
      }
    });
  }

  Future<void> getSyncConfigDetails({bool forceSync = false }) async {
    log.info("Isolate will be spawned");
    // Check of data is present in the database then sync it.
    try {
      var entity = await db.syncEntitys.where().typeEqualTo('CODE_CONFIG').findFirst();
      if (entity == null || forceSync) {
        log.info("Syncing data from server");
        try {
          await getDataFromServer();
        } catch (e) {
          log.warning("Error in syncConfigDetails");
          log.warning(e);
        }
      } else {
        log.info("Data is already present in the database");
      }
    } catch (e) {
      log.info(e);
      log.info('No data present in the database. Syncing data from server');
    }

    // ReceivePort receivePort = ReceivePort();
    // Isolate.spawn(spawnIsolate, receivePort.sendPort);
    //
    // SendPort sendPort = await receivePort.first;
    //
    // ReceivePort responsePort = ReceivePort();
    // sendPort.send(["Logic", responsePort.sendPort]);
    // var resp = await responsePort.first;
    // print(resp);
  }

  static void spawnIsolate(SendPort sendPort) async {
    ReceivePort childReceivePort = ReceivePort();
    sendPort.send(childReceivePort.sendPort);

    await Future.delayed(const Duration(seconds: 5));
    SendPort sPort = (await childReceivePort.first)[1];
    sPort.send("Hello");
  }

  Future<void> loadSampleProductAndImages({bool fullImport = false}) async {
    await loadSampleProductData(fullImport: fullImport);
    await loadSampleProductImageData(fullImport: fullImport);
  }

  Future<void> loadSampleProductImageData({bool fullImport = false}) async {
    if (Constants.baseImagePath.isEmpty) {
      await Constants.getImageBasePath();
    }

    late String url;
    if (fullImport) {
      url = UrlConstants.fullProductsImagesUrl;
    } else {
      url = UrlConstants.sampleProductsImagesUrl;
    }

    try {
      log.info("Loading sample product image data");
      final response =
          await http.get(Uri.parse(UrlConstants.sampleProductsImagesUrl));
      final archive = ZipDecoder().decodeBytes(response.bodyBytes);
      // Write the file to the disk
      for (var file in archive.files) {
        // If it's a file and not a directory
        if (file.isFile) {
          final outputStream =
              OutputFileStream('${Constants.baseImagePath}/${file.name}');
          file.writeContent(outputStream);
          outputStream.close();
        }
      }
      log.info("Loading sample product image data success");
    } catch (e) {
      log.severe("Error loading sample product data");
      log.severe(e.toString());
    }
  }

  Future<void> loadSampleProductData({bool fullImport = false}) async {
    try {
      log.info("Loading sample product data");

      late String url;
      if (fullImport) {
        url = UrlConstants.fullProductDataUrl;
      } else {
        url = UrlConstants.sampleProductDataUrl;
      }

      final response =
          await http.get(Uri.parse(url));
      // Decode the Zip file
      final archive = ZipDecoder().decodeBytes(response.bodyBytes);
      for (final file in archive) {
        final data = file.content as List<int>;
        Stream<List<int>> input = Stream.fromIterable(data.map((e) => [e]));
        final fields = await input
            .transform(utf8.decoder)
            .transform(const CsvToListConverter())
            .toList();

        var resp = await db.writeTxn(() async {
          for (var i = 1; i < fields.length; i++) {
            var e = fields[i];

            var productId = e[0].toString();
            int? seq;

            var entity = ProductEntity(
              displayName: e[1].toString(),
              description: e[2].toString(),
              listPrice: e[3].toString().isNotEmpty
                  ? double.parse(e[3].toString())
                  : 9999999.00,
              salePrice: e[4].toString().isNotEmpty
                  ? double.parse(e[4].toString())
                  : 9999999.00,
              uom: e[5].toString(),
              brand: e[6].toString(),
              skuCode: e[7].toString(),
              hsn: e[8].toString(),
              taxGroupId: e[9].toString(),
              imageUrl: e[10].toString().isNotEmpty
                  ? e[10]
                      .toString()
                      .split(";")
                      .where((element) => element.isNotEmpty)
                      .toList()
                  : [],
              enable: true,
              productId: productId.toString(),
              storeId: -1,
              createTime: DateTime.now(),
              id: seq,
            );
            await db.productEntitys.put(entity,);
          }
        });
      }
      log.info("Loading sample product data success");
    } catch (e) {
      log.severe('Error While loadSampleProductData: ', e);
    }
  }
}
