import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:she_aware/domain/usecase/onboarding/set_onboarding_status_use_case.dart';
import 'package:she_aware/domain/usecase/auth/register_device_use_case.dart';
import 'package:she_aware/injection_container.dart';
import 'package:she_aware/presentation/common/widget/app_button.dart';
import 'package:she_aware/presentation/theme/color.dart';
import 'package:she_aware/presentation/util/routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingPage> _pages = [
    OnboardingPage(
      title: 'Welcome to SheAware',
      subtitle: 'A safe, supportive space to learn about your body, track symptoms, and feel confident seeking medical help.',
      icon: Icons.favorite_rounded,
      color: AppColors.primarySurfaceDefault,
    ),
    OnboardingPage(
      title: 'Learn & Empower',
      subtitle: 'Access clear, friendly information about uterine health, early warning signs, and how to prepare for GP visits.',
      icon: Icons.school_rounded,
      color: AppColors.secondarySurfaceDefault,
    ),
    OnboardingPage(
      title: 'Track & Monitor',
      subtitle: 'Log symptoms, spot patterns, and keep a record that helps you communicate with healthcare providers.',
      icon: Icons.notifications_active,
      color: AppColors.tertiarySurfaceDefault,
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  Future<void> _completeOnboarding() async {
    final setOnboardingStatus = getIt<SetOnboardingStatusUseCase>();
    final registerDevice = getIt<RegisterDeviceUseCase>();
    
    await setOnboardingStatus(true);
    
    try {
      await registerDevice();
    } catch (e) {
      print('Device registration failed during onboarding: $e');
    }

    if (mounted) {
      Navigator.of(context).pushReplacementNamed(Routes.main);
    }
  }

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _completeOnboarding();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayscaleSurfaceBackground,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 16.h, right: 16.w),
                child: TextButton(
                  onPressed: _completeOnboarding,
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grayscaleTextSubtitle,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'SheAware',
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.primarySurfaceDefault,
              ),
            ),
            SizedBox(height: 60.h),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: _onPageChanged,
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  return _OnboardingPageWidget(page: _pages[index]);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  width: _currentPage == index ? 24.w : 8.w,
                  height: 8.h,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? AppColors.primarySurfaceDefault
                        : AppColors.grayscaleSurfaceDisabled,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: AppButton(
                text: _currentPage == _pages.length - 1 ? 'Get Started' : 'Continue',
                onPressed: _nextPage,
              ),
            ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  OnboardingPage({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });
}

class _OnboardingPageWidget extends StatelessWidget {
  final OnboardingPage page;

  const _OnboardingPageWidget({required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AvatarGlow(
            glowColor: page.color,
            glowRadiusFactor: 0.1,
            duration: const Duration(milliseconds: 2000),
            child: Container(
              width: 150.w,
              height: 150.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    page.color.withOpacity(0.2),
                    page.color.withOpacity(0.1),
                  ],
                ),
              ),
              child: Center(
                child: Icon(
                  page.icon,
                  size: 100.r,
                  color: page.color,
                ),
              ),
            ),
          ),
          SizedBox(height: 48.h),
          Text(
            page.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.grayscaleTextTitle,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            page.subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.grayscaleTextSubtitle,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
