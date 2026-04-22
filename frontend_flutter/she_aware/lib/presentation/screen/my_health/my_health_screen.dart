import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import 'package:she_aware/domain/model/symptom/symptom_log.dart';
import 'package:she_aware/presentation/common/widget/app_button.dart';
import 'package:she_aware/presentation/common/widget/app_card.dart';
import 'package:she_aware/presentation/screen/symptom/notifier/provider.dart';
import 'package:she_aware/presentation/theme/color.dart';

class MyHealthScreen extends ConsumerWidget {
  const MyHealthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final symptomState = ref.watch(symptomNotifierProvider);

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        title: const Text('My Health'),
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
          final sortedEntries = List<SymptomLog>.from(entries)
            ..sort((a, b) => (b.entryTime ?? '').compareTo(a.entryTime ?? ''));
          
          return SingleChildScrollView(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppCard(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Symptom Trends (Last 7 Days)',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.grayscaleTextTitle,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      SizedBox(height: 200.h, child: _buildLineChart(sortedEntries)),
                      SizedBox(height: 16.h),
                      _buildChartLegend(),
                      SizedBox(height: 12.h),
                      Text(
                        'Track your symptoms over time to identify patterns',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.grayscaleTextSubtitle,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),

                AppCard(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Risk Awareness Meter',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.grayscaleTextTitle,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      _buildRiskMeter(sortedEntries),
                      SizedBox(height: 16.h),
                      Container(
                        padding: EdgeInsets.all(12.w),
                        decoration: BoxDecoration(
                          color: AppColors.successSurfaceSubtitle,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_circle_rounded,
                              color: AppColors.successIconDefault,
                              size: 20.r,
                            ),
                            SizedBox(width: 12.w),
                            Expanded(
                              child: Text(
                                _getRiskExplanation(sortedEntries),
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: AppColors.successTextDarker,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),

                AppCard(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.medical_services_rounded,
                            color: AppColors.primaryIconDefault,
                            size: 24.r,
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: Text(
                              'Prepare for GP Visit',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.grayscaleTextTitle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Generate a summary of your symptoms to share with your doctor',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.grayscaleTextSubtitle,
                          height: 1.4,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      AppButton(
                        text: 'Generate Summary',
                        onPressed: () {
                          _showGPSummaryDialog(context, sortedEntries);
                        },
                        outlined: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),

                AppCard(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Health Insights',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.grayscaleTextTitle,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      _buildInsightItem(
                        icon: Icons.trending_up_rounded,
                        title: 'Most Common Symptom',
                        value: _getMostCommonSymptom(sortedEntries),
                        color: AppColors.primarySurfaceDefault,
                      ),
                      SizedBox(height: 12.h),
                      _buildInsightItem(
                        icon: Icons.calendar_today_rounded,
                        title: 'Entries This Month',
                        value: _getEntriesThisMonth(sortedEntries),
                        color: AppColors.secondarySurfaceDefault,
                      ),
                      SizedBox(height: 12.h),
                      _buildInsightItem(
                        icon: Icons.mood_rounded,
                        title: 'Average Mood',
                        value: _getAverageMood(sortedEntries),
                        color: AppColors.successSurfaceDefault,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildLineChart(List<SymptomLog> entries) {
    final now = DateTime.now();
    final spots = <FlSpot>[];
    
    for (int i = 6; i >= 0; i--) {
      final date = now.subtract(Duration(days: i));
      final entry = entries.firstWhere(
        (e) {
            if (e.entryTime == null) return false;
            final entryDate = DateTime.tryParse(e.entryTime!);
            if (entryDate == null) return false;
            return entryDate.year == date.year &&
                entryDate.month == date.month &&
                entryDate.day == date.day;
        },
        orElse: () => SymptomLog(
          id: -1, entryTime: null, symptoms: null, painIntensity: null, mood: null, notes: null, scoreSnapshot: null,
        ),
      );

      final painLevel = entry.painIntensity?.toDouble() ?? 0.0;
      spots.add(FlSpot((6 - i).toDouble(), painLevel));
    }

    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: 1,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: AppColors.grayscaleBorderDefault.withOpacity(0.3),
              strokeWidth: 1,
            );
          },
        ),
        titlesData: FlTitlesData(
          show: true,
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30.h,
              interval: 1,
              getTitlesWidget: (double value, TitleMeta meta) {
                final date = DateTime.now().subtract(Duration(days: 6 - value.toInt()));
                 final text = DateFormat('E').format(date);
                return Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: AppColors.grayscaleTextSubtitle,
                      fontSize: 11.sp,
                    ),
                  ),
                );
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              reservedSize: 32.w,
              getTitlesWidget: (double value, TitleMeta meta) {
                return Text(
                  value.toInt().toString(),
                  style: TextStyle(
                    color: AppColors.grayscaleTextSubtitle,
                    fontSize: 11.sp,
                  ),
                );
              },
            ),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border(
            bottom: BorderSide(
              color: AppColors.grayscaleBorderDefault,
              width: 1,
            ),
            left: BorderSide(color: AppColors.grayscaleBorderDefault, width: 1),
          ),
        ),
        minX: 0,
        maxX: 6,
        minY: 0,
        maxY: 5,
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            gradient: LinearGradient(
              colors: [
                AppColors.primarySurfaceDefault,
                AppColors.primarySurfaceDefault.withOpacity(0.8),
              ],
            ),
            barWidth: 3,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 4,
                  color: Colors.white,
                  strokeWidth: 2,
                  strokeColor: AppColors.primarySurfaceDefault,
                );
              },
            ),
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                colors: [
                  AppColors.primarySurfaceDefault.withOpacity(0.2),
                  AppColors.primarySurfaceDefault.withOpacity(0.05),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChartLegend() {
    return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 16.w,
              height: 3.h,
              decoration: BoxDecoration(
                color: AppColors.primarySurfaceDefault,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
            SizedBox(width: 6.w),
            Text(
              "Pain Intensity",
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.grayscaleTextBody,
              ),
            ),
          ],
        );
  }

  Widget _buildRiskMeter(List<SymptomLog> entries) {
    String riskLevel = 'Low Risk';
    double indicatorPosition = 0.15;

    if (entries.isNotEmpty) {
        final latestScore = entries.first.scoreSnapshot?.score ?? 0;
        if (latestScore > 20) {
            riskLevel = 'High Risk';
            indicatorPosition = 0.85;
        } else if (latestScore > 10) {
            riskLevel = 'Moderate Risk';
            indicatorPosition = 0.5;
        }
    }

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 12.h,
                decoration: BoxDecoration(
                  color: AppColors.successSurfaceDefault,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6.r),
                    bottomLeft: Radius.circular(6.r),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(height: 12.h, color: Colors.orange),
            ),
            Expanded(
              child: Container(
                height: 12.h,
                decoration: BoxDecoration(
                  color: AppColors.dangerSurfaceDefault,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6.r),
                    bottomRight: Radius.circular(6.r),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
         LayoutBuilder(
          builder: (context, constraints) {
            return Align(
                alignment: Alignment((indicatorPosition * 2) - 1, 0),
                child: Icon(Icons.arrow_drop_up_rounded, size: 24.r, color: AppColors.grayscaleTextTitle),
            );
          }
        ),
        SizedBox(height: 4.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Low',
              style: TextStyle(
                fontSize: 11.sp,
                color: AppColors.grayscaleTextSubtitle,
              ),
            ),
            Text(
              'Moderate',
              style: TextStyle(
                fontSize: 11.sp,
                color: AppColors.grayscaleTextSubtitle,
              ),
            ),
            Text(
              'High',
              style: TextStyle(
                fontSize: 11.sp,
                color: AppColors.grayscaleTextSubtitle,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: _getRiskColor(riskLevel),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Text(
              riskLevel,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Color _getRiskColor(String level) {
    if (level.contains('High')) return AppColors.dangerSurfaceDefault;
    if (level.contains('Moderate')) return Colors.orange;
    return AppColors.successSurfaceDefault;
  }
  
  String _getRiskExplanation(List<SymptomLog> entries) {
      if (entries.isEmpty) return 'No data available.';
      return entries.first.scoreSnapshot?.explanation ?? 'Your symptoms are being monitored.';
  }

  Widget _buildInsightItem({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Icon(icon, size: 20.r, color: color),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.grayscaleTextSubtitle,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grayscaleTextTitle,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _getMostCommonSymptom(List<SymptomLog> entries) {
      if (entries.isEmpty) return 'N/A';
      final map = <String, int>{};
      for (var entry in entries) {
          if (entry.symptoms != null) {
              for (var s in entry.symptoms!) {
                  final name = s.name ?? 'Unknown';
                  map[name] = (map[name] ?? 0) + 1;
              }
          }
      }
      if (map.isEmpty) return 'None';
      final sortedKeys = map.keys.toList()..sort((a,b) => map[b]!.compareTo(map[a]!));
      return sortedKeys.first.replaceAll('_', ' ');
  }

  String _getEntriesThisMonth(List<SymptomLog> entries) {
      final now = DateTime.now();
      final count = entries.where((e) {
          if (e.entryTime == null) return false;
          final date = DateTime.tryParse(e.entryTime!);
          return date != null && date.year == now.year && date.month == now.month;
      }).length;
      return '$count items';
  }

  String _getAverageMood(List<SymptomLog> entries) {
       if (entries.isEmpty) return 'N/A';
       final map = <String, int>{};
       for (var e in entries) {
           if (e.mood != null) {
               map[e.mood!] = (map[e.mood!] ?? 0) + 1;
           }
       }
       if (map.isEmpty) return 'N/A';
       final sortedKeys = map.keys.toList()..sort((a,b) => map[b]!.compareTo(map[a]!));
       final mood = sortedKeys.first;
       if (mood.toLowerCase() == 'happy') return '$mood 🙂';
       if (mood.toLowerCase() == 'sad') return '$mood 😔';
       if (mood.toLowerCase() == 'neutral') return '$mood 😐';
       return mood;
  }

  void _showGPSummaryDialog(BuildContext context, List<SymptomLog> entries) {
    if (entries.isEmpty) return;
    
    final count = entries.length;
    final avgPain = entries.fold(0, (sum, e) => sum + (e.painIntensity ?? 0)) / count;
    final commonSymptom = _getMostCommonSymptom(entries);
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'GP Visit Summary',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Summary for the last 30 days:',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 12.h),
              Text(
                '• Total Entries: $count\n'
                '• Most frequent symptom: $commonSymptom\n'
                '• Average pain level: ${avgPain.toStringAsFixed(1)}/5\n'
                '• Latest Risk Assessment: ${_getRiskExplanation(entries)}',
                style: TextStyle(fontSize: 13.sp),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primarySurfaceDefault,
            ),
            child: const Text('Share', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
