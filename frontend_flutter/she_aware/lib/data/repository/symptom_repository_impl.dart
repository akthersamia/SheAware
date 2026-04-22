import 'package:she_aware/data/datasource/remote/model/request/symptom/symptom_log_request.dart';
import 'package:she_aware/data/repository/source/remote/symptom_remote_data_source.dart';
import 'package:she_aware/domain/model/symptom/symptom_log.dart';
import 'package:she_aware/domain/repository/symptom_repository.dart';

class SymptomRepositoryImpl implements SymptomRepository {
  final SymptomRemoteDataSource symptomRemoteDataSource;

  SymptomRepositoryImpl({required this.symptomRemoteDataSource});

  @override
  Future<List<SymptomLog>> getSymptomHistory({
    required String xDeviceId,
  }) async {
    var response = await symptomRemoteDataSource.getSymptomHistory(
      xDeviceId: xDeviceId,
    );
    return response;
  }

  @override
  Future<SymptomLog> addLogSymptom({
    required SymptomLogRequest requestBody,
  }) async {
    var response = await symptomRemoteDataSource.addLogSymptom(
      requestBody: requestBody,
    );
    return response;
  }
}
