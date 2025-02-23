import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(sectionsSpace: 0, sections: [
      PieChartSectionData(
        value: 40,
        showTitle: false,
        radius: 50,
        // color: const Color(0xAA208BC8),
      ),
      PieChartSectionData(
        value: 25,
        showTitle: false,
        radius: 50,
        // color: const Color(0xAA4EB7F2),
      ),
      PieChartSectionData(
        value: 20,
        showTitle: false,
        radius: 50,
        // color: const Color(0xAA064061),
      ),
      PieChartSectionData(
        value: 22,
        showTitle: false,
        radius: 50,
        // color: const Color(0xAAE2DECD),
      ),
    ]);
  }
}
