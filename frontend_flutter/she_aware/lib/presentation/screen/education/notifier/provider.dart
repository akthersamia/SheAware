import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:she_aware/presentation/screen/education/notifier/education_notifier.dart';
import 'package:she_aware/presentation/screen/education/state/education_ui_state.dart';

typedef EducationNotifierProvider =
    StateNotifierProvider<EducationNotifier, EducationUiState>;

final EducationNotifierProvider educationNotifierProvider =
    StateNotifierProvider((ref) => EducationNotifier());
