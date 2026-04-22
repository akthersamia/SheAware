import 'package:she_aware/data/datasource/remote/model/response/education/education_data_response.dart';
import 'package:she_aware/domain/model/education/education_hub.dart';

extension EducationResponseMapper on EducationDataResponse {
  EducationHub toEducationHub() {
    return EducationHub(
      id: id,
      title: title,
      slug: slug,
      category: category,
      bodyHtml: bodyHtml,
      sources: sources,
      tags: tags,
      lang: lang,
      updatedAt: updatedAt,
    );
  }
}
