import 'package:she_aware/data/datasource/remote/api/support_api.dart';
import 'package:she_aware/data/datasource/remote/model/response/support/support_response.dart';
import 'package:she_aware/data/datasource/remote/util/api_client.dart';
import 'package:she_aware/data/mapper/support/support_response_mapper.dart';
import 'package:she_aware/domain/model/support/support.dart';

class SupportApiImpl extends SupportApi {
  final ApiClient _client;

  static const getSupportResourcesUrl = 'resources';

  SupportApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<List<Support>> getSupportResources() async {
    try {
      final response = await _client.get<JSONObject, SupportResponse>(
        path: getSupportResourcesUrl,
        converter: (json) {
          return SupportResponse.fromJson(json);
        },
      );
      return response.data.map((e) => e.toSupport()).toList();
    } catch (e) {
      rethrow;
    }
  }
}
