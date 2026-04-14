import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:test1/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: AspectRatio(aspectRatio: 1, child: PieChart(getChartData())),
    );
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
          title: currentIndex == 0 ? 'Design service' : '40%',
          titlePositionPercentageOffset: currentIndex == 0 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: currentIndex == 0 ? Colors.black : Colors.white,
          ),
          value: 40,
          radius: currentIndex == 0 ? 60 : 50,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          title: currentIndex == 1 ? 'Design product' : '25%',
          titlePositionPercentageOffset: currentIndex == 1 ? 2.2 : null,

          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: currentIndex == 1 ? Colors.black : Colors.white,
          ),
          value: 25,
          radius: currentIndex == 1 ? 60 : 50,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          title: currentIndex == 2 ? 'Product royalti' : '20%',
          titlePositionPercentageOffset: currentIndex == 2 ? 1.3 : null,

          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: currentIndex == 2 ? Colors.black : Colors.white,
          ),
          value: 20,
          radius: currentIndex == 2 ? 60 : 50,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          title: currentIndex == 3 ? 'Other' : '15%',
          titlePositionPercentageOffset: currentIndex == 3 ? 1.5 : null,

          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: currentIndex == 3 ? Colors.black : Colors.white,
          ),
          value: 15,
          radius: currentIndex == 3 ? 60 : 50,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
