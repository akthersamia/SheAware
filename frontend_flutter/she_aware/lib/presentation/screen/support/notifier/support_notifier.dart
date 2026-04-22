import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:she_aware/domain/usecase/education/get_education_articles_use_case.dart';
import 'package:she_aware/domain/usecase/support/get_support_resources_use_case.dart';
import 'package:she_aware/injection_container.dart';
import 'package:she_aware/presentation/screen/education/state/education_ui_state.dart';
import 'package:she_aware/presentation/screen/support/state/support_ui_state.dart';

class SupportNotifier extends StateNotifier<SupportUiState> {
  SupportNotifier() : super(const SupportUiState.loading()) {
    getSupportResources();
  }

  Future<void> getSupportResources() async {
    state = const SupportUiState.loading();

    try {
      final useCase = getIt<GetSupportResourcesUseCase>();
      final result = await useCase();

      state = result.when(
        success: (supportResources) {
          return SupportUiState.success(supportResources: supportResources);
        },
        failure: (failure) {
          return SupportUiState.error(failure.message);
        },
      );
    } catch (e) {
      state = SupportUiState.error(e.toString());
    }
  }
}
