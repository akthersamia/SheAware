import 'package:she_aware/data/repository/auth_repository_impl.dart';
import 'package:she_aware/data/repository/education_repository_impl.dart';
import 'package:she_aware/data/repository/support_repository_impl.dart';
import 'package:she_aware/data/repository/symptom_repository_impl.dart';
import 'package:she_aware/domain/repository/auth_repository.dart';
import 'package:she_aware/domain/repository/education_repository.dart';
import 'package:she_aware/domain/repository/settings_repository.dart';
import 'package:she_aware/data/repository/settings_repository_impl.dart';
import 'package:she_aware/domain/repository/support_repository.dart';
import 'package:she_aware/domain/repository/symptom_repository.dart';
import 'package:she_aware/injection_container.dart';

Future<void> setUpRepositoryModule() async {
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      authRemoteDataSource: getIt(),
      authLocalDataSource: getIt(),
    ),
  );

  getIt.registerLazySingleton<SettingsRepository>(
    () => SettingsRepositoryImpl(sharedPreferences: getIt()),
  );

  getIt.registerLazySingleton<EducationRepository>(
    () => EducationRepositoryImpl(educationRemoteDataSource: getIt()),
  );

  getIt.registerLazySingleton<SupportRepository>(
        () => SupportRepositoryImpl(supportRemoteDataSource: getIt()),
  );
  getIt.registerLazySingleton<SymptomRepository>(
        () => SymptomRepositoryImpl(symptomRemoteDataSource: getIt()),
  );
}

