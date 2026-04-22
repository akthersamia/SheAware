import 'package:shared_preferences/shared_preferences.dart';
import 'package:she_aware/data/datasource/local/source/auth_local_data_source_impl.dart';
import 'package:she_aware/data/datasource/remote/source/auth_remote_data_source_impl.dart';
import 'package:she_aware/data/datasource/remote/source/support_remote_data_source_impl.dart';
import 'package:she_aware/data/datasource/remote/source/symptom_remote_data_source_impl.dart';
import 'package:she_aware/data/repository/source/local/auth_local_data_source.dart';
import 'package:she_aware/data/repository/source/remote/auth_remote_data_source.dart';
import 'package:she_aware/data/datasource/remote/source/education_remote_data_source_impl.dart';
import 'package:she_aware/data/repository/source/remote/education_remote_data_source.dart';
import 'package:she_aware/data/repository/source/remote/support_remote_data_source.dart';
import 'package:she_aware/data/repository/source/remote/symptom_remote_data_source.dart';
import 'package:she_aware/injection_container.dart';

Future<void> setUpDataSourceModule() async {
  await setUpLocalDataSourceModule();
  await setUpRemoteDataSourceModule();
}

Future<void> setUpLocalDataSourceModule() async {
  await getIt.isReady<SharedPreferences>();

  getIt.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(sharedPref: getIt()),
  );
}

Future<void> setUpRemoteDataSourceModule() async {
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(authApi: getIt()),
  );

  getIt.registerLazySingleton<EducationRemoteDataSource>(
    () => EducationRemoteDataSourceImpl(educationApi: getIt()),
  );


  getIt.registerLazySingleton<SupportRemoteDataSource>(
        () => SupportRemoteDataSourceImpl(supportApi: getIt()),
  );

  getIt.registerLazySingleton<SymptomRemoteDataSource>(
        () => SymptomRemoteDataSourceImpl(symptomApi: getIt()),
  );
}
