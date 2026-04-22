import 'package:dio/dio.dart';
import 'package:she_aware/data/datasource/remote/api/auth_api.dart';
import 'package:she_aware/data/datasource/remote/api/auth_api_impl.dart';
import 'package:she_aware/data/datasource/remote/api/education_api.dart';
import 'package:she_aware/data/datasource/remote/api/education_api_impl.dart';
import 'package:she_aware/data/datasource/remote/api/support_api.dart';
import 'package:she_aware/data/datasource/remote/api/support_api_impl.dart';
import 'package:she_aware/data/datasource/remote/api/symptom_api.dart';
import 'package:she_aware/data/datasource/remote/api/symptom_api_impl.dart';
import 'package:she_aware/data/datasource/remote/util/api_client.dart';
import 'package:she_aware/data/datasource/remote/util/auth_interceptor.dart';
import 'package:she_aware/data/datasource/remote/util/logging_interceptor.dart';
import 'package:she_aware/injection_container.dart';

Future<void> setUpNetworkModule() async {
  const int timeOut = 30;

  const baseUrl = 'http://10.0.2.2:8000/v1/';

  getIt.registerLazySingleton<AuthInterceptor>(
    () => AuthInterceptor(authLocalDataSource: getIt()),
  );

  getIt.registerLazySingleton<LoggingInterceptor>(() => LoggingInterceptor());

  getIt.registerLazySingleton<Dio>(
    () =>
        Dio(
            BaseOptions(
              baseUrl: baseUrl,
              connectTimeout: const Duration(seconds: timeOut),
              receiveTimeout: const Duration(seconds: timeOut),
            ),
          )
          ..interceptors.addAll([
            getIt<AuthInterceptor>(),
            getIt<LoggingInterceptor>(),
          ]),
  );

  getIt.registerLazySingleton<ApiClient>(() => ApiClient(client: getIt()));

  getIt.registerLazySingleton<AuthApi>(() => AuthApiImpl(client: getIt()));

  getIt.registerLazySingleton<EducationApi>(
    () => EducationApiImpl(client: getIt()),
  );

  getIt.registerLazySingleton<SupportApi>(
        () => SupportApiImpl(client: getIt()),
  );


  getIt.registerLazySingleton<SymptomApi>(
        () => SymptomApiImpl(client: getIt()),
  );
}
