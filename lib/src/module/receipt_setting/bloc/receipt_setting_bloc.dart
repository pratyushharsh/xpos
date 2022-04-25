import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'receipt_setting_event.dart';
part 'receipt_setting_state.dart';

class ReceiptSettingBloc extends Bloc<ReceiptSettingEvent, ReceiptSettingState> {
  ReceiptSettingBloc() : super(const ReceiptSettingState()) {
    on<ReceiptSettingEvent>((event, emit) {
    });
  }
}
