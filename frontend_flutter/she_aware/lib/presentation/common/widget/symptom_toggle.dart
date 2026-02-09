import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:she_aware/presentation/theme/color.dart';

class SymptomToggle extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;
  final IconData? icon;

  const SymptomToggle({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!value),
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: value
              ? AppColors.primarySurfaceSubtitle
              : AppColors.grayscaleSurfaceDefault,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: value
                ? AppColors.primarySurfaceDefault
                : AppColors.grayscaleBorderDefault,
            width: 1.5.w,
          ),
        ),
        child: Row(
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                size: 20.r,
                color: value
                    ? AppColors.primaryIconDefault
                    : AppColors.grayscaleIconDefault,
              ),
              SizedBox(width: 12.w),
            ],
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: value ? FontWeight.w600 : FontWeight.normal,
                  color: value
                      ? AppColors.primaryTextDarker
                      : AppColors.grayscaleTextBody,
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 48.w,
              height: 28.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                color: value
                    ? AppColors.primarySurfaceDefault
                    : AppColors.grayscaleSurfaceDisabled,
              ),
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 200),
                alignment: value ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  margin: EdgeInsets.symmetric(horizontal: 2.w),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
