import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:she_aware/domain/model/auth/auth.dart';

part 'auth_ui_state.freezed.dart';

@freezed
class AuthUiState with _$AuthUiState {
  const factory AuthUiState.initial() = InitialState;

  const factory AuthUiState.loading() = LoadingState;

  const factory AuthUiState.success({Auth? auth}) = SuccessState;

  const factory AuthUiState.error(String message) = ErrorState;
}
