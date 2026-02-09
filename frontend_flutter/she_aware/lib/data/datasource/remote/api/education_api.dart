import 'package:she_aware/domain/model/education/education_hub.dart';

abstract class EducationApi {
  Future<List<EducationHub>> getEducationArticles();
}

