import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:she_aware/presentation/common/widget/bottom_nav_bar.dart';
import 'package:she_aware/presentation/screen/education/education_hub_screen.dart';
import 'package:she_aware/presentation/screen/home/home_screen.dart';
import 'package:she_aware/presentation/screen/main/notifier/providers.dart';
import 'package:she_aware/presentation/screen/my_health/my_health_screen.dart';
import 'package:she_aware/presentation/screen/symptom/symptom_tracker_screen.dart';
import 'package:she_aware/presentation/theme/color.dart';

class MainScreenArgs {
  final int initialIndex;

  MainScreenArgs({this.initialIndex = 0});
}

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  late int _selectedIndex;
  late List<Widget> _pages;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pages = [
      const HomeScreen(),
      const SymptomTrackerScreen(),
      const EducationHubScreen(),
      const MyHealthScreen(),
    ];
  }

  @override
  void didChangeDependencies() {
    final args = (ModalRoute.settingsOf(context)?.arguments as MainScreenArgs?);
    _selectedIndex = args?.initialIndex ?? ref.watch(tabIndexProvider);
    _pageController = PageController(initialPage: _selectedIndex);
    super.didChangeDependencies();
  }

  void _onItemSelected(int index) {
    ref.read(tabIndexProvider.notifier).setIndex(index);
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages.map((Widget page) => page).toList(),
      ),
      backgroundColor: AppColors.colorBackground,
      bottomNavigationBar: SheAwareBottomNavBar(
        currentIndex: ref.watch(tabIndexProvider),
        onTap: _onItemSelected,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
