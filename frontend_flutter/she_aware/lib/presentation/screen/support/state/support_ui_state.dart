import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:she_aware/domain/model/auth/auth.dart';
import 'package:she_aware/domain/model/education/education_hub.dart';
import 'package:she_aware/domain/model/support/support.dart';

part 'support_ui_state.freezed.dart';

@freezed
class SupportUiState with _$SupportUiState{
  const factory SupportUiState.initial() = InitialState;

  const factory SupportUiState.loading() = LoadingState;

  const factory SupportUiState.success({required List<Support> supportResources}) = SuccessState;

  const factory SupportUiState.error(String message) = ErrorState;
}
