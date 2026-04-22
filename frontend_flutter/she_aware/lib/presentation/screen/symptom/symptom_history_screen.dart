import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:she_aware/domain/model/symptom/symptom_log.dart';
import 'package:she_aware/presentation/common/widget/app_card.dart';
import 'package:she_aware/presentation/screen/symptom/notifier/provider.dart';
import 'package:she_aware/presentation/theme/color.dart';
import 'package:intl/intl.dart';

class SymptomHistoryScreen extends ConsumerWidget {
  const SymptomHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final symptomState = ref.watch(symptomNotifierProvider);

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        title: const Text('Symptom History'),
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
      body: symptomState.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (message) => Center(child: Text(message)),
        successSymptomHistory: (entries) {
          if (entries.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit_note_rounded,
                    size: 80.r,
                    color: AppColors.grayscaleIconLighter,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'No entries yet',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayscaleTextSubtitle,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Start tracking your symptoms',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.grayscaleTextSubtitle,
                    ),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: EdgeInsets.all(20.w),
            itemCount: entries.length,
            itemBuilder: (context, index) {
              final entry = entries[index];
              return _buildSymptomCard(context, entry);
            },
          );
        },
      ),
    );
  }

  Widget _buildSymptomCard(BuildContext context, SymptomLog entry) {
    DateTime? date;
    if (entry.entryTime != null) {
      date = DateTime.tryParse(entry.entryTime!);
    }
    
    final isToday = date != null &&
        date.day == DateTime.now().day &&
        date.month == DateTime.now().month &&
        date.year == DateTime.now().year;

    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: AppCard(
        onTap: () {
        },
        padding: EdgeInsets.all(16.w),
        border: Border(
          left: BorderSide(
            color: _getSeverityColor(entry.scoreSnapshot?.category),
            width: 4.w,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today_rounded,
                      size: 16.r,
                      color: AppColors.primaryIconDefault,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      isToday ? 'Today' : (date != null ? _formatDate(date) : 'Unknown Date'),
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryTextDefault,
                      ),
                    ),
                  ],
                ),
                if (entry.mood != null)
                  _buildMoodIcon(entry.mood!),
              ],
            ),
            SizedBox(height: 16.h),
            if (entry.symptoms != null && entry.symptoms!.isNotEmpty) ...[
              Text(
                'Symptoms',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.grayscaleTextSubtitle,
                ),
              ),
              SizedBox(height: 8.h),
              Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: entry.symptoms!.map((symptom) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 6.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primarySurfaceSubtitle.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      _formatSymptomName(symptom.name),
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: AppColors.primaryTextDefault,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.h),
            ],
            if (entry.painIntensity != null) ...[
              Text(
                'Pain Intensity',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.grayscaleTextSubtitle,
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: List.generate(5, (index) {
                  final active = index < (entry.painIntensity ?? 0);
                  return Expanded(
                    child: Container(
                      height: 4.h,
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      decoration: BoxDecoration(
                        color: active
                            ? AppColors.primarySurfaceDefault
                            : AppColors.grayscaleSurfaceDisabled,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                    ),
                  );
                }),
              ),
            ],
             if (entry.scoreSnapshot?.explanation != null) ...[
              SizedBox(height: 12.h),
              Text(
                entry.scoreSnapshot!.explanation!,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.grayscaleTextBody,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return DateFormat('d MMM yyyy').format(date);
  }

  Widget _buildMoodIcon(String mood) {
    IconData icon;
    Color color;
    switch (mood.toLowerCase()) {
      case 'happy':
        icon = Icons.sentiment_very_satisfied_rounded;
        color = Colors.green;
        break;
      case 'sad':
        icon = Icons.sentiment_dissatisfied_rounded;
        color = Colors.orange;
        break;
      case 'neutral':
        icon = Icons.sentiment_neutral_rounded;
        color = Colors.blueGrey;
        break;
      default:
        icon = Icons.sentiment_satisfied_rounded;
        color = AppColors.primaryIconDefault;
    }
    return Icon(icon, size: 28.r, color: color);
  }

  String _formatSymptomName(String? name) {
    if (name == null) return '';
    return name
        .replaceAll('_', ' ')
        .split(' ')
        .map((str) => str.isNotEmpty
            ? '${str[0].toUpperCase()}${str.substring(1)}'
            : '')
        .join(' ');
  }

  Color _getSeverityColor(String? category) {
    switch (category?.toLowerCase()) {
      case 'high':
      case 'severe':
        return AppColors.dangerSurfaceDefault;
      case 'moderate':
        return Colors.orange;
      case 'low':
      case 'mild':
        return AppColors.successIconDefault;
      default:
        return AppColors.primarySurfaceDefault;
    }
  }
}
