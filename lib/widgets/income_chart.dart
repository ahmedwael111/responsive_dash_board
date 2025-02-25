import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int currntIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, touchResponse) {
            currntIndex =
                touchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            value: 40,
            showTitle: false,
            radius: currntIndex == 0 ? 50 : 30,
            color: const Color(0xff208BC8),
          ),
          PieChartSectionData(
            value: 25,
            showTitle: false,
            radius: currntIndex == 1 ? 50 : 30,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            value: 20,
            showTitle: false,
            radius: currntIndex == 2 ? 50 : 30,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            value: 22,
            showTitle: false,
            radius: currntIndex == 3 ? 50 : 30,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
