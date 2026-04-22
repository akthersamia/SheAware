import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:she_aware/data/datasource/remote/model/request/symptom/symptom_log_request.dart';
import 'package:she_aware/data/datasource/remote/model/request/symptom/symptom_request.dart';
import 'package:she_aware/data/repository/source/local/auth_local_data_source.dart';
import 'package:she_aware/injection_container.dart';
import 'package:she_aware/presentation/common/widget/app_button.dart';
import 'package:she_aware/presentation/common/widget/mood_selector.dart';
import 'package:she_aware/presentation/common/widget/symptom_toggle.dart';
import 'package:intl/intl.dart';
import 'package:she_aware/domain/model/symptom/symptom_log.dart';
import 'package:she_aware/presentation/screen/symptom/notifier/provider.dart';
import 'package:she_aware/presentation/screen/symptom/state/symptom_ui_state.dart';
import 'package:she_aware/presentation/theme/color.dart';
import 'package:she_aware/presentation/util/routes.dart';

class SymptomTrackerScreen extends ConsumerStatefulWidget {
  const SymptomTrackerScreen({super.key});

  @override
  ConsumerState<SymptomTrackerScreen> createState() =>
      _SymptomTrackerScreenState();
}

class _SymptomTrackerScreenState extends ConsumerState<SymptomTrackerScreen> {
  DateTime _selectedDate = DateTime.now();
  final Map<String, bool> _symptoms = {
    'Abnormal bleeding': false,
    'Pelvic pain': false,
    'Bloating': false,
    'Fatigue': false,
    'Pain during sex': false,
  };
  double _painIntensity = 1;
  MoodType? _selectedMood;
  final TextEditingController _notesController = TextEditingController();

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.primarySurfaceDefault,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: AppColors.grayscaleTextBody,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _saveEntry() {
    final selectedMood = _selectedMood?.name;
    if (selectedMood == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please select a mood')));
      return;
    }

    final selectedSymptoms = _symptoms.entries
        .where((e) => e.value)
        .map(
          (e) => SymptomRequest(
            name: e.key.toLowerCase().replaceAll(' ', '_'),
            severity: 3,
            durationValue: 1,
            durationUnit: 'day',
          ),
        )
        .toList();

    if (selectedSymptoms.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select at least one symptom')),
      );
      return;
    }

    final xDeviceId = getIt<AuthLocalDataSource>().getDeviceId();

    final requestBody = SymptomLogRequest(
      deviceId: xDeviceId,
      symptoms: selectedSymptoms,
      painIntensity: _painIntensity.toInt(),
      mood: selectedMood,
      notes: _notesController.text.isNotEmpty ? _notesController.text : null,
    );

    ref
        .read(symptomNotifierProvider.notifier)
        .addLogSymptom(requestBody: requestBody);
  }

  void _handleStateChange(SymptomUiState? previous, SymptomUiState next) {
    next.maybeWhen(
      successLogSymptom: (log) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Symptom entry saved successfully!'),
            backgroundColor: AppColors.successSurfaceDefault,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        );

        setState(() {
          _selectedDate = DateTime.now();
          _symptoms.updateAll((k, v) => false);
          _painIntensity = 1;
          _selectedMood = null;
          _notesController.clear();
        });

        ref.read(symptomNotifierProvider.notifier).getSymptomHistory();
      },
      error: (message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $message'),
            backgroundColor: AppColors.dangerSurfaceDefault,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        );
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<SymptomUiState>(symptomNotifierProvider, _handleStateChange);
    final symptomState = ref.watch(symptomNotifierProvider);
    final isLoading = symptomState.maybeWhen(
      loading: () => true,
      orElse: () => false,
    );

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        title: const Text('Log Symptoms'),
        foregroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.primarySurfaceDefault,
                AppColors.secondarySurfaceDefault,
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildRecentHistory(ref),
                SizedBox(height: 24.h),

                InkWell(
                  onTap: _selectDate,
                  borderRadius: BorderRadius.circular(12.r),
                  child: Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: AppColors.grayscaleBorderDefault,
                        width: 1.w,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today_rounded,
                          color: AppColors.primaryIconDefault,
                          size: 20.r,
                        ),
                        SizedBox(width: 12.w),
                        Text(
                          _selectedDate.day == DateTime.now().day &&
                                  _selectedDate.month == DateTime.now().month &&
                                  _selectedDate.year == DateTime.now().year
                              ? 'Today'
                              : '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.grayscaleTextTitle,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_drop_down_rounded,
                          color: AppColors.grayscaleIconDefault,
                          size: 24.r,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.h),

                Text(
                  'Select Symptoms',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grayscaleTextTitle,
                  ),
                ),
                SizedBox(height: 16.h),
                ..._symptoms.keys.map((symptom) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 12.h),
                    child: SymptomToggle(
                      label: symptom,
                      value: _symptoms[symptom]!,
                      onChanged: (value) {
                        setState(() {
                          _symptoms[symptom] = value;
                        });
                      },
                      icon: _getSymptomIcon(symptom),
                    ),
                  );
                }),
                SizedBox(height: 24.h),

                Text(
                  'Pain Intensity',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grayscaleTextTitle,
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: AppColors.grayscaleBorderDefault,
                      width: 1.w,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Level: ${_painIntensity.toInt()}',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryTextDefault,
                            ),
                          ),
                          Text(
                            _getPainLabel(_painIntensity.toInt()),
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.grayscaleTextSubtitle,
                            ),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          activeTrackColor: AppColors.primarySurfaceDefault,
                          inactiveTrackColor:
                              AppColors.grayscaleSurfaceDisabled,
                          thumbColor: AppColors.primarySurfaceDefault,
                          overlayColor: AppColors.primarySurfaceDefault
                              .withValues(alpha: 0.2),
                          trackHeight: 6.h,
                        ),
                        child: Slider(
                          value: _painIntensity,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          onChanged: (value) {
                            setState(() {
                              _painIntensity = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),

                Text(
                  'Mood Check-in',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grayscaleTextTitle,
                  ),
                ),
                SizedBox(height: 16.h),
                MoodSelector(
                  selectedMood: _selectedMood,
                  onMoodSelected: (mood) {
                    setState(() {
                      _selectedMood = mood;
                    });
                  },
                ),
                SizedBox(height: 24.h),

                Text(
                  'Additional Notes',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grayscaleTextTitle,
                  ),
                ),
                SizedBox(height: 12.h),
                TextField(
                  controller: _notesController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: 'Add any notes...',
                    hintStyle: TextStyle(
                      color: AppColors.grayscaleTextSubtitle,
                      fontSize: 14.sp,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: AppColors.grayscaleBorderDefault,
                        width: 1.w,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: AppColors.grayscaleBorderDefault,
                        width: 1.w,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: AppColors.primaryBorderDefault,
                        width: 2.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32.h),

                AppButton(
                  text: 'Save Entry',
                  onPressed: isLoading ? null : _saveEntry,
                  isLoading: isLoading,
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
          if (isLoading)
            Container(
              color: Colors.black26,
              child: const Center(child: CircularProgressIndicator()),
            ),
        ],
      ),
    );
  }

  Widget _buildRecentHistory(WidgetRef ref) {
    final symptomState = ref.watch(symptomNotifierProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent History',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.grayscaleTextTitle,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.symptomHistory);
              },
              child: Text(
                'View All',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryTextDefault,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        symptomState.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Text(
            'Failed to load history',
            style: TextStyle(
              color: AppColors.dangerTextDefault,
              fontSize: 14.sp,
            ),
          ),
          successSymptomHistory: (entries) {
            if (entries.isEmpty) {
              return Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: AppColors.grayscaleBorderDefault,
                    width: 1.w,
                  ),
                ),
                child: Center(
                  child: Text(
                    'No entries yet',
                    style: TextStyle(
                      color: AppColors.grayscaleTextSubtitle,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              );
            }

            final recentEntries = entries.take(3).toList();
            return SizedBox(
              height: 140.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: recentEntries.length,
                separatorBuilder: (context, index) => SizedBox(width: 12.w),
                itemBuilder: (context, index) {
                  final entry = recentEntries[index];
                  return _buildHistoryCard(entry);
                },
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget _buildHistoryCard(SymptomLog entry) {
    DateTime? date;
    if (entry.entryTime != null) {
      date = DateTime.tryParse(entry.entryTime!);
    }

    return Container(
      width: 160.w,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.grayscaleBorderDefault, width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date != null ? DateFormat('d MMM').format(date) : '',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryTextDefault,
                ),
              ),
              if (entry.mood != null)
                Icon(
                  _getMoodIcon(entry.mood!),
                  size: 20.r,
                  color: AppColors.primaryIconDefault,
                ),
            ],
          ),
          SizedBox(height: 8.h),
          Expanded(
            child: entry.symptoms != null && entry.symptoms!.isNotEmpty
                ? Wrap(
                    spacing: 4.w,
                    runSpacing: 4.h,
                    children: entry.symptoms!.take(2).map((s) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primarySurfaceSubtitle,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Text(
                          _formatSymptomName(s.name),
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.primaryTextDefault,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      );
                    }).toList(),
                  )
                : Text(
                    'No symptoms recorded',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.grayscaleTextSubtitle,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text(
                'Pain: ',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.grayscaleTextSubtitle,
                ),
              ),
              Expanded(
                child: Row(
                  children: List.generate(5, (index) {
                    return Container(
                      width: 12.w,
                      height: 4.h,
                      margin: EdgeInsets.only(right: 2.w),
                      decoration: BoxDecoration(
                        color: index < (entry.painIntensity ?? 0)
                            ? _getPainColor(entry.painIntensity ?? 0)
                            : AppColors.grayscaleSurfaceDisabled,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  IconData _getMoodIcon(String mood) {
    switch (mood.toLowerCase()) {
      case 'happy':
        return Icons.sentiment_very_satisfied_rounded;
      case 'sad':
        return Icons.sentiment_dissatisfied_rounded;
      case 'neutral':
        return Icons.sentiment_neutral_rounded;
      default:
        return Icons.sentiment_satisfied_rounded;
    }
  }

  Color _getPainColor(int intensity) {
    if (intensity <= 2) return AppColors.successSurfaceDefault;
    if (intensity <= 4) return Colors.orange;
    return AppColors.dangerSurfaceDefault;
  }

  String _formatSymptomName(String? name) {
    if (name == null) return '';
    return name
        .replaceAll('_', ' ')
        .split(' ')
        .map(
          (str) => str.isNotEmpty
              ? '${str[0].toUpperCase()}${str.substring(1)}'
              : '',
        )
        .join(' ');
  }

  IconData _getSymptomIcon(String symptom) {
    switch (symptom) {
      case 'Abnormal bleeding':
        return Icons.water_drop_rounded;
      case 'Pelvic pain':
        return Icons.healing_rounded;
      case 'Bloating':
        return Icons.air_rounded;
      case 'Fatigue':
        return Icons.battery_0_bar_rounded;
      case 'Pain during sex':
        return Icons.favorite_border_rounded;
      default:
        return Icons.circle_outlined;
    }
  }

  String _getPainLabel(int level) {
    switch (level) {
      case 1:
        return 'Minimal';
      case 2:
        return 'Mild';
      case 3:
        return 'Moderate';
      case 4:
        return 'Severe';
      case 5:
        return 'Very Severe';
      default:
        return '';
    }
  }
}
