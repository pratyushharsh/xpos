import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

import '../../../entity/pos/tax_group_entity.dart';
import '../../../entity/pos/tax_rule_entity.dart';
import '../../../repositories/tax_repository.dart';

part 'create_edit_tax_event.dart';
part 'create_edit_tax_state.dart';

class CreateEditTaxBloc extends Bloc<CreateEditTaxEvent, CreateEditTaxState> {
  final log = Logger('CreateEditTaxBloc');
  final TaxRepository taxRepository;

  CreateEditTaxBloc({ required this.taxRepository }) : super(const CreateEditTaxState()) {
    on<FetchAllTaxGroup>(_fetchAllTaxGroupEvent);
    on<SelectTaxGroup>(_selectTaxGroupEvent);
    on<DeleteTaxRule>(_deleteTaxRuleEvent);
  }

  void _fetchAllTaxGroupEvent(FetchAllTaxGroup event, Emitter<CreateEditTaxState> emit) async {
    emit(state.copyWith(status: CreateEditTaxStatus.loadingNewTaxGroup));
    try {
      List<TaxGroupEntity> taxGroups = await taxRepository.getAllTaxGroups(loadRules: true);
      // Update Selected Group
      var selectedTaxGroup = state.selectedTaxGroup;
      if (selectedTaxGroup != null) {
        for(TaxGroupEntity taxGroup in taxGroups) {
          if(taxGroup.groupId == state.selectedTaxGroup!.groupId) {
            selectedTaxGroup = taxGroup;
            break;
          }
        }
      }

      emit(state.copyWith(status: CreateEditTaxStatus.success, taxGroups: taxGroups, selectedTaxGroup: selectedTaxGroup));
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: CreateEditTaxStatus.error));
    }
  }

  void _deleteTaxRuleEvent(DeleteTaxRule event, Emitter<CreateEditTaxState> emit) async {
    emit(state.copyWith(status: CreateEditTaxStatus.taxRuleDeleteLoading));
    try {
      await taxRepository.deleteTaxRule(event.taxGroup, event.taxRule);
      emit(state.copyWith(status: CreateEditTaxStatus.success));
      add(FetchAllTaxGroup());
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: CreateEditTaxStatus.error));
    }
  }

  void _selectTaxGroupEvent(SelectTaxGroup event, Emitter<CreateEditTaxState> emit) async {
    emit(state.copyWith(selectedTaxGroup: event.taxGroup));
  }
}
