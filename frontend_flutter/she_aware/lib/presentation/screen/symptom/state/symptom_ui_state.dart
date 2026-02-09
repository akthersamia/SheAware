import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:she_aware/domain/model/symptom/symptom_log.dart';

part 'symptom_ui_state.freezed.dart';

@freezed
class SymptomUiState with _$SymptomUiState {
  const factory SymptomUiState.initial() = InitialState;

  const factory SymptomUiState.loading() = LoadingState;

  const factory SymptomUiState.successLogSymptom({
    required SymptomLog logSymptom,
  }) = SuccessLogSymptomState;

  const factory SymptomUiState.successSymptomHistory({
    required List<SymptomLog> symptomHistory,
  }) = SuccessSymptomHistoryState;

  const factory SymptomUiState.error(String message) = ErrorState;
}
