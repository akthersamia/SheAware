import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:she_aware/presentation/screen/main/notifier/tab_index_notifier.dart';

final tabIndexProvider = StateNotifierProvider<TabIndexNotifier, int>(
  (ref) => TabIndexNotifier(),
);
