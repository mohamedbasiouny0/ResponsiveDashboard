import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 120, width: 120, child: PieChart(getChartData()));
  }

  int? currentIndex;

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          if (currentIndex !=
              pieTouchResponse?.touchedSection?.touchedSectionIndex) {
            currentIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex;
            setState(() {});
          }
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          radius: currentIndex == 0 ? 25 : 20,
          value: 40,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          radius: currentIndex == 1 ? 25 : 20,

          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          radius: currentIndex == 2 ? 25 : 20,

          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 15,
          radius: currentIndex == 3 ? 25 : 20,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
