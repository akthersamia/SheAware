import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:she_aware/domain/model/support/support.dart';
import 'package:she_aware/presentation/theme/color.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:timeago/timeago.dart' as timeago;

class SupportDetailScreen extends StatelessWidget {
  final Support support;
  final Color color;
  final IconData icon;

  const SupportDetailScreen({
    super.key,
    required this.support,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        title: Text(support.category ?? 'Details'),
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(icon, size: 32.r, color: color),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Text(
                      support.title ?? 'No Title',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.grayscaleTextTitle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            if (support.description != null) ...[
              Text(
                'Description',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.grayscaleTextTitle,
                ),
              ),
              SizedBox(height: 12.h),
              MarkdownBody(
                data: support.description!,
                styleSheet: MarkdownStyleSheet(
                  p: TextStyle(
                    fontSize: 15.sp,
                    color: AppColors.grayscaleTextBody,
                    height: 1.6,
                  ),
                  listBullet: TextStyle(
                    fontSize: 16.sp,
                    color: color,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
            ],
            if (support.phoneNumber != null) ...[
              SizedBox(height: 16.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => _launchPhone(support.phoneNumber!),
                  icon: const Icon(Icons.phone_rounded),
                  label: Text('Call ${support.phoneNumber}'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
              ),
            ],
            if (support.link != null) ...[
              SizedBox(height: 16.h),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () => _launchURL(support.link!),
                  icon: const Icon(Icons.language_rounded),
                  label: const Text('Visit Website'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: color,
                    side: BorderSide(color: color),
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
              ),
            ],
            SizedBox(height: 24.h),
            Center(
              child: Text(
                'Updated ${timeago.format(DateTime.parse(support.createdAt))}',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.grayscaleTextSubtitle,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $url');
    }
  }

  Future<void> _launchPhone(String phoneNumber) async {
    final Uri uri = Uri(scheme: 'tel', path: phoneNumber.replaceAll(' ', ''));
    if (!await launchUrl(uri)) {
      debugPrint('Could not launch $phoneNumber');
    }
  }
}
