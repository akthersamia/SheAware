import 'package:she_aware/data/repository/source/remote/support_remote_data_source.dart';
import 'package:she_aware/domain/model/support/support.dart';
import 'package:she_aware/domain/repository/support_repository.dart';

class SupportRepositoryImpl implements SupportRepository {
  final SupportRemoteDataSource supportRemoteDataSource;

  SupportRepositoryImpl({required this.supportRemoteDataSource});

  @override
  Future<List<Support>> getSupportResources() async {
    var response = await supportRemoteDataSource.getSupportResources(
    );
    return response;
  }
}
