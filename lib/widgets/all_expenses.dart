import 'package:flutter/Material.dart';
import 'package:gap/gap.dart';
import 'package:test1/widgets/all_expense_horizontal_list.dart';
import 'package:test1/widgets/all_expenses_header.dart';
import 'package:test1/widgets/custom_background_contanier.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: CustomBackgroundContainer(
        padding: 20,
        child: Column(
          crossAxisAlignment: .start,
          mainAxisSize: .min,
          children: [AllExpensesHeader(), Gap(16), AllExpensesHorizontalList()],
        ),
      ),
    );
  }
}


