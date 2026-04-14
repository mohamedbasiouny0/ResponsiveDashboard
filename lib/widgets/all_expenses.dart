import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/size_config.dart';
import 'package:test1/widgets/all_expense_horizontal_list.dart';
import 'package:test1/widgets/all_expenses_header.dart';
import 'package:test1/widgets/all_expenses_list_mobile.dart';
import 'package:test1/widgets/custom_background_contanier.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.widthOf(context);
    return CustomBackgroundContainer(
      padding: 20,
      child: Column(
        crossAxisAlignment: .start,
        mainAxisSize: .min,
        children: [
          const AllExpensesHeader(),
          const Gap(16),
          width < SizeConfig.tablet
              ? const AllExpensesListMobile()
              : const AllExpensesHorizontalList(),
        ],
      ),
    );
  }
}

