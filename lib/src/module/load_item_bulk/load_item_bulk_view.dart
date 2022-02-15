import 'dart:io';

import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:receipt_generator/src/module/load_item_bulk/bloc/load_item_bulk_bloc.dart';
import 'package:receipt_generator/src/repositories/app_database.dart';
import 'package:random_string/random_string.dart';

class LoadItemInBulk extends StatelessWidget {

  const LoadItemInBulk({Key? key}) : super(key: key);

  generateCsv() async {
    List<List<String>> data = [
      ["No.", "Name", "Roll No."],
      ["1", randomAlpha(3), randomNumeric(3)],
      ["2", randomAlpha(3), randomNumeric(3)],
      ["3", randomAlpha(3), randomNumeric(3)]
    ];
    String csvData = const ListToCsvConverter().convert(data);
    final dir = (await getExternalStorageDirectories(type: StorageDirectory.downloads));
    final ext = (await getExternalStorageDirectory());
    // final Directory? down = (await getDownloadsDirectory());
    // final Directory? app = (await getApplicationSupportDirectory());
    // final String directory = down != null ? down.path : (await getApplicationSupportDirectory()).path;
    // const String directory = '/storage/emulated/0/Download/';
    if (dir != null && dir.isNotEmpty) {
      final path = "${dir[0].path}/csv-${DateTime.now()}.csv";
      print(path);
      final File file = File(path);
      await file.writeAsString(csvData);
    }

  }


  onUpload(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ["csv"]);

    if (result != null) {
      String? path = result.files.single.path;
      if (path != null) {
        BlocProvider.of<LoadItemBulkBloc>(context).add(ProcessFile(path));
      }
    } else {
      // User canceled the picker
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            generateCsv();
          }, child: const Text("Download Sample File")),
          ElevatedButton(onPressed: () {
            onUpload(context);
          }, child: const Text("Load From File")),
        ],
      ),
    );
  }
}
