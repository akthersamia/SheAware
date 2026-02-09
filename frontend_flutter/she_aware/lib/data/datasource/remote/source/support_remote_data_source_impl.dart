import 'package:she_aware/data/datasource/remote/api/support_api.dart';
import 'package:she_aware/data/repository/source/remote/support_remote_data_source.dart';
import 'package:she_aware/domain/model/support/support.dart';

class SupportRemoteDataSourceImpl extends SupportRemoteDataSource {
  final SupportApi _supportApi;

  SupportRemoteDataSourceImpl({required SupportApi supportApi})
    : _supportApi = supportApi;

  @override
  Future<List<Support>> getSupportResources() async {
    var response = await _supportApi.getSupportResources(
    );
    return response;
  }
}
