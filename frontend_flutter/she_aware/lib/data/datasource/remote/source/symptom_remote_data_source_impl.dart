import 'package:she_aware/data/datasource/remote/api/symptom_api.dart';
import 'package:she_aware/data/datasource/remote/model/request/symptom/symptom_log_request.dart';
import 'package:she_aware/data/repository/source/remote/symptom_remote_data_source.dart';
import 'package:she_aware/domain/model/symptom/symptom_log.dart';

class SymptomRemoteDataSourceImpl extends SymptomRemoteDataSource {
  final SymptomApi _symptomApi;

  SymptomRemoteDataSourceImpl({required SymptomApi symptomApi})
    : _symptomApi = symptomApi;

  @override
  Future<List<SymptomLog>> getSymptomHistory({
    required String xDeviceId,
  }) async {
    var response = await _symptomApi.getSymptomHistory(xDeviceId: xDeviceId);
    return response;
  }

  @override
  Future<SymptomLog> addLogSymptom({
    required SymptomLogRequest requestBody,
  }) async {
    var response = await _symptomApi.addLogSymptom(
      requestBody: requestBody,
    );
    return response;
  }
}
