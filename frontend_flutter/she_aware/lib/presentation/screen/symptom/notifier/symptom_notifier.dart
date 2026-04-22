import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:she_aware/data/datasource/remote/model/request/symptom/symptom_log_request.dart';
import 'package:she_aware/data/repository/source/local/auth_local_data_source.dart';
import 'package:she_aware/domain/usecase/symptom/add_log_symptom_use_case.dart';
import 'package:she_aware/domain/usecase/symptom/get_symptom_history_use_case.dart';
import 'package:she_aware/injection_container.dart';
import 'package:she_aware/presentation/screen/symptom/state/symptom_ui_state.dart';

class SymptomNotifier extends StateNotifier<SymptomUiState> {
  SymptomNotifier() : super(const SymptomUiState.loading()) {
    getSymptomHistory();
  }

  Future<void> getSymptomHistory() async {
    state = const SymptomUiState.loading();

    final xDeviceId = getIt<AuthLocalDataSource>().getDeviceId();

    try {
      final useCase = getIt<GetSymptomHistoryUseCase>();
      final result = await useCase(xDeviceId: xDeviceId);

      state = result.when(
        success: (symptomHistory) {
          return SymptomUiState.successSymptomHistory(
            symptomHistory: symptomHistory,
          );
        },
        failure: (failure) {
          return SymptomUiState.error(failure.message);
        },
      );
    } catch (e) {
      state = SymptomUiState.error(e.toString());
    }
  }

  Future<void> addLogSymptom({required SymptomLogRequest requestBody}) async {
    state = const SymptomUiState.loading();

    try {
      final useCase = getIt<AddLogSymptomUseCase>();
      final result = await useCase(requestBody: requestBody);

      state = result.when(
        success: (logSymptom) {
          return SymptomUiState.successLogSymptom(logSymptom: logSymptom);
        },
        failure: (failure) {
          return SymptomUiState.error(failure.message);
        },
      );
    } catch (e) {
      state = SymptomUiState.error(e.toString());
    }
  }
}
