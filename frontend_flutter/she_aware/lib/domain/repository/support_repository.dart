import 'package:she_aware/domain/model/support/support.dart';

abstract class SupportRepository {
  Future<List<Support>> getSupportResources();
}
