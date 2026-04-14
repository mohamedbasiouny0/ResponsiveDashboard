import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/size_config.dart';
import 'package:test1/widgets/detailed_income_chart.dart';
import 'package:test1/widgets/income_chart.dart';
import 'package:test1/widgets/income_items_list_view.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.widthOf(context);

    return width >= SizeConfig.desktop && width < 1400
        ? const Expanded(child: DetailedIncomeChart())
        : Row(
            children: [
              width < 600 ? const SizedBox.shrink() : const Gap(20),
              const Expanded(child: IncomeChart()),
              width < 600 ? const Gap(20) : const Gap(40),
              const Expanded(flex: 2, child: IncomeItemsListView()),
            ],
          );
  }
}
