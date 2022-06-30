import 'dart:convert';
import 'dart:isolate';

import 'package:archive/archive.dart';
import 'package:csv/csv.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:http/http.dart' as http;
import 'package:receipt_generator/src/entity/config/code_value_entity.dart';

class SyncConfigRepository {
  final log = Logger('SyncConfigRepository');

  final Isar db;

  SyncConfigRepository({ required this.db });

  Future<void> getDataFromServer() async {
    String url = "https://xpos-user-dev.s3.ap-south-1.amazonaws.com/config/config.zip";
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

      String category = filename.replaceAll(".csv", "");
      var res = await db.writeTxn((isar) async {
        for (int i = 0; i < fields.length; i++) {
          var c = fields[i];
          isar.codeValueEntitys.put(CodeValueEntity(category: category, code: c[0].toString(), value: c[1].toString(), description: c[1].toString()), replaceOnConflict: true);
        }
      });

      log.info(res);
    }
  }


  Future<void> getSyncConfigDetails() async {

    log.info("Isolate will be spawned");
    await getDataFromServer();
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
}