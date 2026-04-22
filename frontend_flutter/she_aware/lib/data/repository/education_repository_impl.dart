import 'package:she_aware/data/repository/source/remote/education_remote_data_source.dart';
import 'package:she_aware/domain/model/education/education_hub.dart';
import 'package:she_aware/domain/repository/education_repository.dart';

class EducationRepositoryImpl implements EducationRepository {
  final EducationRemoteDataSource educationRemoteDataSource;

  EducationRepositoryImpl({required this.educationRemoteDataSource});

  @override
  Future<List<EducationHub>> getEducationArticles() async {
    var response = await educationRemoteDataSource.getEducationArticles(
    );
    return response;
  }
}
