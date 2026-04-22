import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:she_aware/presentation/screen/education/notifier/education_notifier.dart';
import 'package:she_aware/presentation/screen/education/state/education_ui_state.dart';
import 'package:she_aware/presentation/screen/support/notifier/support_notifier.dart';
import 'package:she_aware/presentation/screen/support/state/support_ui_state.dart';
import 'package:she_aware/presentation/screen/symptom/notifier/symptom_notifier.dart';
import 'package:she_aware/presentation/screen/symptom/state/symptom_ui_state.dart';

typedef SymptomNotifierProvider =
    StateNotifierProvider<SymptomNotifier, SymptomUiState>;

final SymptomNotifierProvider symptomNotifierProvider =
    StateNotifierProvider((ref) => SymptomNotifier());
