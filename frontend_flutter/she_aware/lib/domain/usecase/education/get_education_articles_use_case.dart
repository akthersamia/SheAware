import 'package:she_aware/domain/model/education/education_hub.dart';
import 'package:she_aware/domain/repository/education_repository.dart';
import 'package:she_aware/domain/util/failure.dart';
import 'package:she_aware/domain/util/result.dart';

class GetEducationArticlesUseCase {
  final EducationRepository _educationRepository;

  GetEducationArticlesUseCase({required EducationRepository educationRepository})
    : _educationRepository = educationRepository;

  Future<Result<List<EducationHub>>> call() async {
    return await _educationRepository
        .getEducationArticles()
        .then((value) => Result.success(value))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
