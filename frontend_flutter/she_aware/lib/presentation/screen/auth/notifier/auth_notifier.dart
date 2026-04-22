import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:she_aware/data/repository/source/local/auth_local_data_source.dart';
import 'package:she_aware/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:she_aware/domain/usecase/auth/register_use_case.dart';
import 'package:she_aware/injection_container.dart';
import 'package:she_aware/presentation/screen/auth/state/auth_ui_state.dart';

class AuthNotifier extends StateNotifier<AuthUiState> {
  AuthNotifier() : super(const AuthUiState.initial());

  Future<void> registerDevice({required RegisterRequest requestBody}) async {
    state = const AuthUiState.loading();

    final useCase = getIt<RegisterUseCase>();
    final result = await useCase(requestBody: requestBody);

    state = result.when(
      success: (auth) {
        return AuthUiState.success(auth: auth);
      },
      failure: (failure) {
        return AuthUiState.error(failure.message);
      },
    );

    await result.maybeWhen(
      orElse: () => Future.value(),
    );
  }


  Future<void> logout() async {
    final authLocalDataSource = getIt<AuthLocalDataSource>();
    await authLocalDataSource.clearTokens();
    state = const AuthUiState.initial();
  }
}
