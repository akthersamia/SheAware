import 'package:she_aware/domain/model/education/education_hub.dart';
import 'package:she_aware/domain/model/support/support.dart';
import 'package:she_aware/domain/repository/education_repository.dart';
import 'package:she_aware/domain/repository/support_repository.dart';
import 'package:she_aware/domain/util/failure.dart';
import 'package:she_aware/domain/util/result.dart';

class GetSupportResourcesUseCase {
  final SupportRepository _supportRepository;

  GetSupportResourcesUseCase({required SupportRepository supportRepository})
    : _supportRepository = supportRepository;

  Future<Result<List<Support>>> call() async {
    return await _supportRepository
        .getSupportResources()
        .then((value) => Result.success(value))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
