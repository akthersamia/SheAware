import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:she_aware/domain/model/support/support.dart';
import 'package:she_aware/presentation/common/widget/app_card.dart';
import 'package:she_aware/presentation/screen/support/notifier/provider.dart';
import 'package:she_aware/presentation/screen/support/support_detail_screen.dart';
import 'package:she_aware/presentation/theme/color.dart';

class SupportResourcesScreen extends ConsumerWidget {
  const SupportResourcesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supportState = ref.watch(supportNotifierProvider);

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        title: const Text('Support & Resources'),
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
      body: supportState.when(
        initial: () => const SizedBox.shrink(),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (message) => Center(child: Text(message)),
        success: (supportResources) {
          return ListView.separated(
            padding: EdgeInsets.all(20.w),
            itemCount: supportResources.length,
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemBuilder: (context, index) {
              final item = supportResources[index];
              return _buildSupportItem(context, item);
            },
          );
        },
      ),
    );
  }

  Widget _buildSupportItem(BuildContext context, Support item) {
    final categoryColor = _getCategoryColor(item.category);
    final categoryIcon = _getCategoryIcon(item.category);

    return AppCard(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SupportDetailScreen(
              support: item,
              color: categoryColor,
              icon: categoryIcon,
            ),
          ),
        );
      },
      padding: EdgeInsets.all(16.w),
      border: item.category == 'EMERGENCY'
          ? Border.all(color: AppColors.dangerSurfaceDefault, width: 1)
          : Border.all(color: AppColors.primaryBorderDefault, width: 1),
      backgroundColor: item.category == 'EMERGENCY'
          ? AppColors.dangerSurfaceSubtitle.withOpacity(0.1)
          : null,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: categoryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(categoryIcon, color: categoryColor, size: 24.r),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title ?? 'No Title',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: item.category == 'EMERGENCY'
                        ? AppColors.dangerTextDarker
                        : AppColors.grayscaleTextTitle,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  item.category ?? 'General',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: categoryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  item.description ?? '',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: AppColors.grayscaleTextSubtitle,
                    height: 1.4,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16.r,
            color: AppColors.grayscaleIconDefault,
          ),
        ],
      ),
    );
  }

  Color _getCategoryColor(String? category) {
    switch (category?.toUpperCase()) {
      case 'EMERGENCY':
        return AppColors.dangerIconDefault;
      case 'HELPLINE':
        return AppColors
            .secondaryIconDefault;
      case 'NHS':
        return AppColors.primaryIconDefault;
      default:
        return AppColors.tertiaryIconDefault;
    }
  }

  IconData _getCategoryIcon(String? category) {
    switch (category?.toUpperCase()) {
      case 'EMERGENCY':
        return Icons.emergency_rounded;
      case 'HELPLINE':
        return Icons.support_agent_rounded;
      case 'NHS':
        return Icons.local_hospital_rounded;
      default:
        return Icons.info_outline_rounded;
    }
  }
}
