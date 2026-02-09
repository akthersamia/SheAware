import 'package:she_aware/domain/usecase/auth/check_auth_status_use_case.dart';
import 'package:she_aware/domain/usecase/auth/register_use_case.dart';
import 'package:she_aware/domain/usecase/auth/register_device_use_case.dart';
import 'package:she_aware/domain/usecase/education/get_education_articles_use_case.dart';
import 'package:she_aware/domain/usecase/onboarding/check_onboarding_status_use_case.dart';
import 'package:she_aware/domain/usecase/onboarding/set_onboarding_status_use_case.dart';
import 'package:she_aware/domain/usecase/support/get_support_resources_use_case.dart';
import 'package:she_aware/domain/usecase/symptom/add_log_symptom_use_case.dart';
import 'package:she_aware/domain/usecase/symptom/get_symptom_history_use_case.dart';
import 'package:she_aware/injection_container.dart';

Future<void> setUpUseCaseModule() async {
  await setUpAuthUseCaseModule();
  await setUpOnboardingUseCaseModule();
  await setUpEducationUseCaseModule();
  await setUpSupportUseCaseModule();
  await setUpSymptomUseCaseModule();
}

Future<void> setUpAuthUseCaseModule() async {

  getIt.registerLazySingleton(() => RegisterUseCase(authRepository: getIt()));

  getIt.registerLazySingleton(
    () => CheckAuthStatusUseCase(authLocalDataSource: getIt()),
  );

  getIt.registerLazySingleton(
    () => RegisterDeviceUseCase(authRepository: getIt()),
  );
}

Future<void> setUpOnboardingUseCaseModule() async {
  getIt.registerLazySingleton(
    () => CheckOnboardingStatusUseCase(settingsRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => SetOnboardingStatusUseCase(settingsRepository: getIt()),
  );
}

Future<void> setUpEducationUseCaseModule() async {
  getIt.registerLazySingleton(
    () => GetEducationArticlesUseCase(educationRepository: getIt()),
  );
}

Future<void> setUpSupportUseCaseModule() async {
  getIt.registerLazySingleton(
        () => GetSupportResourcesUseCase(supportRepository: getIt()),
  );
}

Future<void> setUpSymptomUseCaseModule() async {
  getIt.registerLazySingleton(
        () => GetSymptomHistoryUseCase(symptomRepository: getIt()),
  );
  getIt.registerLazySingleton(
        () => AddLogSymptomUseCase(symptomRepository: getIt()),
  );
}