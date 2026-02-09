
import 'package:she_aware/data/datasource/remote/model/response/symptom/symptom_data_response.dart';
import 'package:she_aware/domain/model/symptom/symptom_log.dart';

extension SymptomDataResponseMapper on SymptomDataResponse {
  Symptom toDomain() {
    return Symptom(
      name: name,
      severity: severity,
      durationValue: durationValue,
      durationUnit: durationUnit,
    );
  }
}

