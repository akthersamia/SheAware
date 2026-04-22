import 'package:she_aware/domain/model/education/education_hub.dart';

abstract class EducationRepository {
  Future<List<EducationHub>> getEducationArticles();
}
