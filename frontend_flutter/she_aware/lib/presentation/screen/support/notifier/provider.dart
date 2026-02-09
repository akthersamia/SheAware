import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:she_aware/presentation/screen/education/notifier/education_notifier.dart';
import 'package:she_aware/presentation/screen/education/state/education_ui_state.dart';
import 'package:she_aware/presentation/screen/support/notifier/support_notifier.dart';
import 'package:she_aware/presentation/screen/support/state/support_ui_state.dart';

typedef SupportNotifierProvider =
    StateNotifierProvider<SupportNotifier, SupportUiState>;

final SupportNotifierProvider supportNotifierProvider =
    StateNotifierProvider((ref) => SupportNotifier());
