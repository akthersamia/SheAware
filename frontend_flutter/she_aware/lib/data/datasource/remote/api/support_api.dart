import 'package:she_aware/domain/model/support/support.dart';

abstract class SupportApi {
  Future<List<Support>> getSupportResources();
}

