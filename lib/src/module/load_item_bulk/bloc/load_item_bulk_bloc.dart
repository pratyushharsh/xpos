import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:csv/csv.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/module/authentication/bloc/authentication_bloc.dart';
import 'package:receipt_generator/src/repositories/sequence_repository.dart';

part 'load_item_bulk_event.dart';
part 'load_item_bulk_state.dart';

class LoadItemBulkBloc extends Bloc<LoadItemBulkEvent, LoadItemBulkState> {
  final log = Logger('LoadItemBulkBloc');
  final Isar db;
  final AuthenticationBloc auth;
  final SequenceRepository sequenceRepository;
  LoadItemBulkBloc(
      {required this.db, required this.sequenceRepository, required this.auth})
      : super(LoadItemBulkState()) {
    on<ProcessFile>(_onLoadFile);
  }

  void _onLoadFile(ProcessFile event, Emitter<LoadItemBulkState> emit) async {
    try {
      if (auth.state.store == null) return;
      emit(state.copyWith(status: LoadItemBulkStatus.loading));
      final input = File(event.path).openRead();
      final fields = await input
          .transform(utf8.decoder)
          .transform(const CsvToListConverter(shouldParseNumbers: false, eol: '\n'))
          .toList();

      var resp = await db.writeTxn((isar) async {
        for (var i = 1; i < fields.length; i++) {
          var e = fields[i];

          var productId = e[0].toString();
          int? seq;
          if (productId.isEmpty) {
            seq = (await sequenceRepository.getNextSequence(SequenceType.item))
                .nextSeq;
            productId = 'SKU$seq';
          }

          var entity = ProductEntity(
            displayName: e[1].toString(),
            description: e[2].toString(),
            listPrice:
                e[3].toString().isNotEmpty ? double.parse(e[3].toString()) : 9999999.00,
            salePrice:
                e[4].toString().isNotEmpty ? double.parse(e[3].toString()) : 9999999.00,
            uom: e[5].toString(),
            brand: e[6].toString(),
            skuCode: e[7].toString(),
            hsn: e[8].toString(),
            tax: e[9].toString().isNotEmpty
                ? double.parse(e[9].toString()) / 100
                : 0,
            imageUrl: e[10].toString().isNotEmpty ? e[10].toString().split(";").where((element) => element.isNotEmpty).toList() : [],
            enable: true,
            productId: productId.toString(),
            storeId: auth.state.store!.rtlLocId,
            createTime: DateTime.now(),
            id: seq,
          );
          await db.productEntitys.put(entity, replaceOnConflict: true);
        }
      });
      log.info(resp);

      emit(state.copyWith(status: LoadItemBulkStatus.success));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: LoadItemBulkStatus.failure));
    }
  }
}
