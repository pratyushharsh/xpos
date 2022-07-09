import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'line_item_modification_event.dart';
part 'line_item_modification_state.dart';

class LineItemModificationBloc extends Bloc<LineItemModificationEvent, LineItemModificationState> {
  LineItemModificationBloc() : super(LineItemModificationInitial()) {
    on<LineItemModificationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
