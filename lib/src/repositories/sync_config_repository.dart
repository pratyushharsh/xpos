import 'dart:isolate';

import 'package:logging/logging.dart';

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

    await Future.delayed(const Duration(seconds: 5));
    SendPort sPort = (await childReceivePort.first)[1];
    sPort.send("Hello");
  }
}