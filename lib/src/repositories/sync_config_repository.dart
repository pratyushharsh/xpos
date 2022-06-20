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
    String url = "https://xpos-user-dev.s3.ap-south-1.amazonaws.com/config/config.zip?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEAaCmFwLXNvdXRoLTEiSDBGAiEA0DxRd5n4sshHQ6PuRQMD6okM3Veb7nYYlhOXF77OixUCIQCCNVlddWq%2FReOVh1lHmc2VN5hilbjkTds2htD%2BEMDocyrkAghJEAEaDDE4OTQ2ODg1NjgxNCIMIL%2FOXL68%2FPkO0b0jKsECgWn6PZ1VyBVOUcnmJ4gF8oNYwwqPYgSnKMq6Q6zOklqlwafRHelyRnKDS%2BlDQGrhc1raI8OyqXOij%2Fd65umMKUglOqHHq%2BnU1Vh6D6a4cw9ssXQZuFQ56XIc4jocnF9JrJ1aksrejU8HIDKe3kxa3%2BgUmY8BGGdX%2Bz01WSkQgtkp3aZ1uZiQdtKyvWKlb2GhEbLdLjBZ3nEvn5mjD7QW7ELNCt4qO5F%2FmFiUxdj3rhOPSK9zzXGA0PjOWITAP0bsh5kbBviTwhE8BNtBPgsndAkc16bjB%2FsAr6aQ6RByD9Zr9svTh4BAtbWrCeC6nWelgCQlm1aBZc0L576IeVCv5URuVg0ge34rsvmM9IlZJ%2BYaSrpUEd3pj%2BteN4XInsCH7VG1ZzDzOJ9DCcZNT6Sujh9h3qT4a%2F%2FO186SXYcS6%2FIJMOj0kpUGOrIC2I88MwkVM6cs546uYWvkf9cgRdKhxKaaKjdFZ2bnlxErRmNIFZyOMYJIEPRnbUeyHLTEl9l28BXSDDYYflLWzcEAvZjkLzmEaNqwLQFTlTfWQ1060FpWTUxv7DNt%2FhjydNfiWEfppYv9fGVxNoHd4nGaGOBXqfX%2BwrnF6Tz2zqQLQoCgFBP2g3VnIYSWSUZLeWNTd1fYgWoRzag9rFVBSCYt23LRuL6ejkilNqZXR5U6w4wrAUMqALLPjYmRbfDKIaxvblrkOCOnSS6AIT61bAD4mD%2Fg0mHI7WOHKiD77ST2e2volsrukjQtSt%2FrtLTTNz7bQGkRTJTdDvcrtP6ZXCuKVlh%2FNgoivfwH9pt2QdlkMun6VGYhHk0PmstO%2FtR5wWx%2BmcwX9TupNbMP5I8tAY18&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20220611T155725Z&X-Amz-SignedHeaders=host&X-Amz-Expires=43200&X-Amz-Credential=ASIASYHJZKHXLQHE5ZLL%2F20220611%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Signature=3ea35b0d9c3ff69dc24f3b5828baf096291252cf2f92c644aa575efa138d0f51";
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