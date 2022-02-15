import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_new_item_event.dart';
part 'add_new_item_state.dart';

class AddNewItemBloc extends Bloc<AddNewItemEvent, AddNewItemState> {
  AddNewItemBloc() : super(AddNewItemInitial()) {
    on<AddNewItemEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
