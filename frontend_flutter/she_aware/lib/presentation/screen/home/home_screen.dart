import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:she_aware/presentation/common/widget/app_card.dart';
import 'package:she_aware/presentation/theme/color.dart';
import 'package:she_aware/presentation/util/routes.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final List<MotivationalMessage> _motivationalMessages = [
    MotivationalMessage(
      message: 'You know your body best. Trust your instincts and speak up.',
      icon: Icons.favorite_rounded,
    ),
    MotivationalMessage(
      message: 'Taking care of your health is a sign of strength, not weakness.',
      icon: Icons.psychology_rounded,
    ),
    MotivationalMessage(
      message: 'Your health matters. Don\'t ignore the signs your body is giving you.',
      icon: Icons.health_and_safety_rounded,
    ),
    MotivationalMessage(
      message: 'Early detection saves lives. Stay informed and stay healthy.',
      icon: Icons.verified_user_rounded,
    ),
    MotivationalMessage(
      message: 'You deserve to feel heard and supported in your health journey.',
      icon: Icons.support_agent_rounded,
    ),
  ];

  int _currentMessageIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentMessageIndex = DateTime.now().day % _motivationalMessages.length;
  }

  @override
  Widget build(BuildContext context) {
    final currentMessage = _motivationalMessages[_currentMessageIndex];

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.primarySurfaceDefault,
                  AppColors.secondarySurfaceDefault,
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32.r),
                bottomRight: Radius.circular(32.r),
              ),
            ),
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: EdgeInsets.fromLTRB(24.w, 20.h, 24.w, 32.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi there 👋',
                      style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Let\'s check in with your uterine health today',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white.withOpacity(0.9),
                        height: 1.4,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    
                    Container(
                      padding: EdgeInsets.all(20.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20.r,
                            offset: Offset(0, 10.h),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              color: AppColors.secondarySurfaceSubtitle,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              currentMessage.icon,
                              color: AppColors.secondarySurfaceDefault,
                              size: 24.r,
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Expanded(
                            child: Text(
                              currentMessage.message,
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: AppColors.grayscaleTextBody,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                left: 24.w,
                right: 24.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h,
                    childAspectRatio: 0.95,
                    children: [
                      _ActionCard(
                        icon: Icons.track_changes_rounded,
                        title: 'Log Symptoms',
                        subtitle: 'Track your daily health',
                        color: AppColors.primarySurfaceDefault,
                        onTap: () {
                        },
                      ),
                      _ActionCard(
                        icon: Icons.favorite_rounded,
                        title: 'My Health',
                        subtitle: 'View trends & insights',
                        color: AppColors.dangerSurfaceDefault,
                        onTap: () {
                        },
                      ),
                      _ActionCard(
                        icon: Icons.menu_book_rounded,
                        title: 'Learn About Uterine Health',
                        subtitle: 'Educational resources',
                        color: AppColors.secondarySurfaceDefault,
                        onTap: () {
                        },
                      ),
                      _ActionCard(
                        icon: Icons.support_agent_rounded,
                        title: 'Support & Resources',
                        subtitle: 'NHS link & helplines',
                        color: AppColors.tertiarySurfaceDefault,
                        onTap: () {
                         Navigator.pushNamed(context, Routes.supportResources);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MotivationalMessage {
  final String message;
  final IconData icon;

  MotivationalMessage({
    required this.message,
    required this.icon,
  });
}

class _ActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback onTap;

  const _ActionCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTap,
      border: Border.all(color: color.withOpacity(0.2)),
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              icon,
              size: 32.r,
              color: color,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grayscaleTextTitle,
                  height: 1.2,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.grayscaleTextSubtitle,
                  height: 1.3,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
