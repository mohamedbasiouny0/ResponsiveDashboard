import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/widgets/income_chart.dart';
import 'package:test1/widgets/income_items_list_view.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.widthOf(context);
    return width >= 1200 && width < 1400
        ? const SizedBox()
        : const Row(
            children: [
              IncomeChart(),
              Gap(40),
              Expanded(child: IncomeItemsListView()),
            ],
          );
  }
}
