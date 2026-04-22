import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:she_aware/domain/model/auth/auth.dart';
import 'package:she_aware/domain/model/education/education_hub.dart';

part 'education_ui_state.freezed.dart';

@freezed
class EducationUiState with _$EducationUiState{
  const factory EducationUiState.initial() = InitialState;

  const factory EducationUiState.loading() = LoadingState;

  const factory EducationUiState.success({required List<EducationHub> articles}) = SuccessState;

  const factory EducationUiState.error(String message) = ErrorState;
}
