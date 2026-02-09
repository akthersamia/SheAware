import 'package:she_aware/domain/model/symptom/symptom_log.dart';
import 'package:she_aware/domain/repository/symptom_repository.dart';
import 'package:she_aware/domain/util/failure.dart';
import 'package:she_aware/domain/util/result.dart';

class GetSymptomHistoryUseCase {
  final SymptomRepository _symptomRepository;

  GetSymptomHistoryUseCase({required SymptomRepository symptomRepository})
    : _symptomRepository = symptomRepository;

  Future<Result<List<SymptomLog>>> call({required String xDeviceId}) async {
    return await _symptomRepository
        .getSymptomHistory(xDeviceId: xDeviceId)
        .then((value) => Result.success(value))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
