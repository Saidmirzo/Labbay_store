import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155.h,
      margin: EdgeInsets.symmetric(horizontal: 37.w, vertical: 47.h)
          .copyWith(bottom: 33.h),
      child: LineChart(
        LineChartData(
          lineTouchData: LineTouchData(
            enabled: false,
            handleBuiltInTouches: true,
            // mouseCursorResolver: (p0, p1) => MouseCursor,
          ),
          backgroundColor: Colors.transparent,
          titlesData: FlTitlesData(
            show: true,
            rightTitles: AxisTitles(
              axisNameWidget: const SizedBox.shrink(),
            ),
            topTitles: AxisTitles(
              axisNameWidget: const SizedBox.shrink(),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 50000,
                reservedSize: 50,
                getTitlesWidget: (value, meta) {
                  if (value % 50000 == 0) {
                    return Text(
                      value.toInt().toString(),
                      style: AppTextStyles.body6w5.copyWith(
                        color: AppColors.chartLeftTextColor,
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                reservedSize: 10,
                getTitlesWidget: (value, meta) {
                  if (value % 1 == 0) {
                    return Text(
                      '${value.toInt()}-noy',
                      style: AppTextStyles.body7w5.copyWith(
                        color: AppColors.chartBottomTextColor,
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ),
          ),
          minY: 45000,
          minX: 8,
          maxX: 14,
          maxY: 205000,
          borderData: FlBorderData(show: false),
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            drawHorizontalLine: true,
            horizontalInterval: 50000,
            getDrawingHorizontalLine: (value) {
              if (value % 50000 == 0) {
                return FlLine(
                  color: AppColors.chartGridLineColor,
                  strokeWidth: 1,
                );
              } else {
                return FlLine();
              }
            },
          ),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              color: AppColors.chartColor,
              barWidth: 2,
              belowBarData: BarAreaData(
                show: true,
                color: Colors.transparent,
                spotsLine: BarAreaSpotsLine(
                  show: true,
                  flLineStyle: FlLine(
                    color: AppColors.green,
                    strokeWidth: 3.5,
                  ),
                ),
              ),
              dotData: FlDotData(show: true),
              spots: [
                const FlSpot(8, 136000),
                const FlSpot(9, 82000),
                const FlSpot(10, 109000),
                const FlSpot(11, 72000),
                const FlSpot(12, 173000),
                const FlSpot(13, 129000),
                const FlSpot(14, 198000),
              ],
            ),
          ],
        ),
      ),
    );
  }
}