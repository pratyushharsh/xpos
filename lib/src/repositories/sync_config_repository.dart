import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:receipt_generator/src/entity/config/code_value_entity.dart';

import 'config_database.dart';

class SyncConfigRepository {
  final log = Logger('SyncConfigRepository');

  Future<void> getSyncConfigDetails() async {

    log.info("Isolate will be spawned");

    ReceivePort receivePort = ReceivePort();
    Isolate.spawn(spawnIsolate, receivePort.sendPort);

    SendPort sendPort = await receivePort.first;

    ReceivePort responsePort = ReceivePort();
    sendPort.send(["Logic", responsePort.sendPort]);
    var resp = await responsePort.first;
    print(resp);
  }

  static void spawnIsolate(SendPort sendPort) async {
    ReceivePort childReceivePort = ReceivePort();
    sendPort.send(childReceivePort.sendPort);
    print("From Isolate");

    // Insert in the database
    final configDb =
    await $FloorConfigDatabase.databaseBuilder('config_database.db').build();

    var code = CodeValueEntity(rtlLocId: "1", category: "REWR", code: "DUU", value: "Sometexxt");

    try {
      await configDb.codeValueDao.insertBulk(code);
    } catch (e) {
      print(e);
    }

    await Future.delayed(const Duration(seconds: 5));
    SendPort sPort = (await childReceivePort.first)[1];
    sPort.send("Hello");
  }
}