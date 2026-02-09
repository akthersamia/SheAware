import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:she_aware/presentation/theme/color.dart';

enum MoodType {
  happy,
  neutral,
  sad,
}

class MoodSelector extends StatelessWidget {
  final MoodType? selectedMood;
  final ValueChanged<MoodType> onMoodSelected;

  const MoodSelector({
    super.key,
    required this.selectedMood,
    required this.onMoodSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _MoodButton(
          emoji: '🙂',
          label: 'Good',
          moodType: MoodType.happy,
          isSelected: selectedMood == MoodType.happy,
          onTap: () => onMoodSelected(MoodType.happy),
        ),
        _MoodButton(
          emoji: '😟',
          label: 'Okay',
          moodType: MoodType.neutral,
          isSelected: selectedMood == MoodType.neutral,
          onTap: () => onMoodSelected(MoodType.neutral),
        ),
        _MoodButton(
          emoji: '😢',
          label: 'Not Good',
          moodType: MoodType.sad,
          isSelected: selectedMood == MoodType.sad,
          onTap: () => onMoodSelected(MoodType.sad),
        ),
      ],
    );
  }
}

class _MoodButton extends StatelessWidget {
  final String emoji;
  final String label;
  final MoodType moodType;
  final bool isSelected;
  final VoidCallback onTap;

  const _MoodButton({
    required this.emoji,
    required this.label,
    required this.moodType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primarySurfaceSubtitle
              : AppColors.grayscaleSurfaceDefault,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: isSelected
                ? AppColors.primarySurfaceDefault
                : AppColors.grayscaleBorderDefault,
            width: isSelected ? 2.w : 1.w,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              emoji,
              style: TextStyle(fontSize: 32.sp),
            ),
            SizedBox(height: 4.h),
            Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                color: isSelected
                    ? AppColors.primaryTextDefault
                    : AppColors.grayscaleTextSubtitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
