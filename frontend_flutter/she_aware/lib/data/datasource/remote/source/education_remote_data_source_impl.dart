import 'package:she_aware/data/datasource/remote/api/education_api.dart';
import 'package:she_aware/data/repository/source/remote/education_remote_data_source.dart';
import 'package:she_aware/domain/model/education/education_hub.dart';

class EducationRemoteDataSourceImpl extends EducationRemoteDataSource {
  final EducationApi _educationApi;

  EducationRemoteDataSourceImpl({required EducationApi educationApi})
    : _educationApi = educationApi;

  @override
  Future<List<EducationHub>> getEducationArticles() async {
    var response = await _educationApi.getEducationArticles(
    );
    return response;
  }
}
