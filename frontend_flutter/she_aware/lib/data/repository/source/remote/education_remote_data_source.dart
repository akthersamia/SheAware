import 'package:she_aware/domain/model/education/education_hub.dart';

abstract class EducationRemoteDataSource {
  Future<List<EducationHub>> getEducationArticles();
}
