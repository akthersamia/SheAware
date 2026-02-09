import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:she_aware/domain/model/education/education_hub.dart';
import 'package:she_aware/presentation/common/widget/app_card.dart';
import 'package:she_aware/presentation/screen/education/notifier/provider.dart';
import 'package:she_aware/presentation/theme/color.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:timeago/timeago.dart' as timeago;

class EducationHubScreen extends ConsumerWidget {
  const EducationHubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(educationNotifierProvider);

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        title: const Text('Education Hub'),
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
      body: state.when(
        initial: () => const SizedBox.shrink(),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (message) => Center(child: Text(message)),
        success: (articles) {
          return ListView.separated(
            padding: EdgeInsets.all(20.w),
            itemCount: articles.length,
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemBuilder: (context, index) {
              final article = articles[index];
              final categoryColor = _getCategoryColor(article.category);
              final categoryIcon = _getCategoryIcon(article.category);

              return AppCard(
                border: Border.all(color: Colors.grey.withOpacity(0.2)),
                onTap: () {
                  _showTopicDetail(
                    context,
                    article,
                    categoryColor,
                    categoryIcon,
                  );
                },
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.title ?? 'No Title',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.grayscaleTextTitle,
                        height: 1.2,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          article.category ?? 'General',
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: AppColors.grayscaleTextSubtitle,
                            height: 1.3,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                         timeago.format(DateTime.parse(article.updatedAt ?? DateTime.now().toString())),
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: AppColors.grayscaleTextSubtitle,
                            height: 1.3,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Html(
                      data: article.bodyHtml ?? '',
                      style: {
                        "body": Style(
                          maxLines: 3,
                          textOverflow: TextOverflow.ellipsis,
                          fontSize: FontSize(15.sp),
                          color: AppColors.grayscaleTextBody,
                          lineHeight: LineHeight(1.6),
                        ),
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _showTopicDetail(
    BuildContext context,
    EducationHub article,
    Color color,
    IconData icon,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            EducationDetailScreen(article: article, color: color, icon: icon),
      ),
    );
  }

  Color _getCategoryColor(String? category) {
    return AppColors.primarySurfaceDefault;
  }

  IconData _getCategoryIcon(String? category) {
    return Icons.article_outlined;
  }
}

class EducationDetailScreen extends StatelessWidget {
  final EducationHub article;
  final Color color;
  final IconData icon;

  const EducationDetailScreen({
    super.key,
    required this.article,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        title: Text(article.category ?? 'Details'),
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
            Text(
              article.title ?? '',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.grayscaleTextTitle,
              ),
            ),
            SizedBox(height: 16.h),
            if (article.tags != null && article.tags!.isNotEmpty) ...[
              Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: article.tags!.map((tag) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 6.h,
                    ),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(color: color.withOpacity(0.3)),
                    ),
                    child: Text(
                      tag,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.grayscaleTextTitle,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.h),
            ],
            Html(
              data: article.bodyHtml ?? '',
              style: {
                "body": Style(
                  fontSize: FontSize(15.sp),
                  color: AppColors.grayscaleTextBody,
                  lineHeight: LineHeight(1.6),
                ),
              },
            ),
            if (article.sources != null && article.sources!.isNotEmpty) ...[
              SizedBox(height: 24.h),
              Text(
                'Sources',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.grayscaleTextTitle,
                ),
              ),
              SizedBox(height: 8.h),
              ...article.sources!.map(
                (source) => Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '• ',
                        style: TextStyle(
                          color: AppColors.grayscaleTextBody,
                          fontSize: 14.sp,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          source,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.grayscaleTextBody,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
