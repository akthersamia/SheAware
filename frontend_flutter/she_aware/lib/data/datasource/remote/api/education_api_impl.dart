import 'package:she_aware/data/datasource/remote/api/education_api.dart';
import 'package:she_aware/data/datasource/remote/model/response/education/education_response.dart';
import 'package:she_aware/data/datasource/remote/util/api_client.dart';
import 'package:she_aware/data/mapper/education/education_response_mapper.dart';
import 'package:she_aware/domain/model/education/education_hub.dart';

class EducationApiImpl extends EducationApi {
  final ApiClient _client;

  static const getEducationArticlesUrl = 'content/articles';

  EducationApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<List<EducationHub>> getEducationArticles() async {
    try {
      final response = await _client.get<JSONObject, EducationResponse>(
        path: getEducationArticlesUrl,
        converter: (json) {
          return EducationResponse.fromJson(json);
        },
      );
      return response.data.map((e) => e.toEducationHub()).toList();
    } catch (e) {
      rethrow;
    }
  }
}
