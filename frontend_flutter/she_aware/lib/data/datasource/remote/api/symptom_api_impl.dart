import 'package:dio/dio.dart';
import 'package:she_aware/data/datasource/remote/api/symptom_api.dart';
import 'package:she_aware/data/datasource/remote/model/request/symptom/symptom_log_request.dart';
import 'package:she_aware/data/datasource/remote/model/response/symptom/symptom_history_response.dart';
import 'package:she_aware/data/datasource/remote/model/response/symptom/symptom_log_response.dart';
import 'package:she_aware/data/datasource/remote/util/api_client.dart';
import 'package:she_aware/data/mapper/symptom/symptom_log_response_mapper.dart';
import 'package:she_aware/domain/model/symptom/symptom_log.dart';

class SymptomApiImpl extends SymptomApi {
  final ApiClient _client;

  static const getSymptomHistoryUrl = 'symptoms';
  static const addLogSymptomUrl = 'symptoms';

  SymptomApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<List<SymptomLog>> getSymptomHistory({
    required String xDeviceId,
  }) async {
    try {
      final response = await _client.get<JSONObject, SymptomHistoryResponse>(
        path: getSymptomHistoryUrl,
        options: Options(headers: {'X-Device-Id': xDeviceId}),
        converter: (json) {
          return SymptomHistoryResponse.fromJson(json);
        },
      );
      return response.data.map((e) => e.toDomain()).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SymptomLog> addLogSymptom({
    required SymptomLogRequest requestBody,
  }) async {
    try {
      final response = await _client.post<JSONObject, SymptomLogResponse>(
        path: addLogSymptomUrl,
        data: requestBody.toJson(),
        converter: (json) {
          return SymptomLogResponse.fromJson(json);
        },
      );
      return response.data.toDomain();
    } catch (e) {
      rethrow;
    }
  }
}
