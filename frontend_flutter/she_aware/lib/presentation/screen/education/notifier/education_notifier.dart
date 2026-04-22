import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:she_aware/domain/usecase/education/get_education_articles_use_case.dart';
import 'package:she_aware/injection_container.dart';
import 'package:she_aware/presentation/screen/education/state/education_ui_state.dart';

class EducationNotifier extends StateNotifier<EducationUiState> {
  EducationNotifier() : super(const EducationUiState.loading()) {
    getEducationArticles();
  }

  Future<void> getEducationArticles() async {
    state = const EducationUiState.loading();

    try {
      final useCase = getIt<GetEducationArticlesUseCase>();
      final result = await useCase();

      state = result.when(
        success: (articles) {
          return EducationUiState.success(articles: articles);
        },
        failure: (failure) {
          return EducationUiState.error(failure.message);
        },
      );
    } catch (e) {
      state = EducationUiState.error(e.toString());
    }
  }
}
