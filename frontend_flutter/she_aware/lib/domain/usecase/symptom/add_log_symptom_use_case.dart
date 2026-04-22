import 'package:she_aware/data/datasource/remote/model/request/symptom/symptom_log_request.dart';
import 'package:she_aware/domain/model/symptom/symptom_log.dart';
import 'package:she_aware/domain/repository/symptom_repository.dart';
import 'package:she_aware/domain/util/failure.dart';
import 'package:she_aware/domain/util/result.dart';

class AddLogSymptomUseCase {
  final SymptomRepository _symptomRepository;

  AddLogSymptomUseCase({required SymptomRepository symptomRepository})
    : _symptomRepository = symptomRepository;

  Future<Result<SymptomLog>> call({
    required SymptomLogRequest requestBody,
}) async {
    return await _symptomRepository
        .addLogSymptom(requestBody: requestBody)
        .then((value) => Result.success(value))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
