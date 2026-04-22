import 'package:she_aware/domain/model/support/support.dart';

abstract class SupportRemoteDataSource {
  Future<List<Support>> getSupportResources();
}
