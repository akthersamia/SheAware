import 'package:she_aware/data/datasource/remote/model/request/symptom/symptom_log_request.dart';
import 'package:she_aware/domain/model/symptom/symptom_log.dart';

abstract class SymptomRemoteDataSource {
  Future<List<SymptomLog>> getSymptomHistory({required String xDeviceId});

  Future<SymptomLog> addLogSymptom({required SymptomLogRequest requestBody});
}
