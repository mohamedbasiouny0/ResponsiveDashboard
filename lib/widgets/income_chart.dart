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
    double width = MediaQuery.widthOf(context);

    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData(context, width)),
    );
  }

  int? currentIndex;

  double getRadius(int index, double width) {
    if (currentIndex == index) {
      return width > 1920 ? width * 1.2 / 1920 * 40 : 40;
    } else {
      return width > 1920 ? width * 1.2 / 1920 * 30 : 30;
    }
  }

  PieChartData getChartData(BuildContext context, double width) {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (event, pieTouchResponse) {
          if (!event.isInterestedForInteractions ||
              pieTouchResponse == null ||
              pieTouchResponse.touchedSection == null) {
            return;
          }
          final index = pieTouchResponse.touchedSection!.touchedSectionIndex;
          if (currentIndex != index) {
            setState(() {
              currentIndex = index;
            });
          }
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          radius: getRadius(0, width),
          value: 40,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          radius: getRadius(1, width),
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          radius: getRadius(2, width),
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 15,
          radius: getRadius(3, width),
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
