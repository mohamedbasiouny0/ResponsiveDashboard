import 'package:flutter/Material.dart';
import 'package:gap/gap.dart';
import 'package:test1/widgets/all_expense_horizontal_list.dart';
import 'package:test1/widgets/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: .circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: .start,
          mainAxisSize: .min,
          children: [AllExpensesHeader(), Gap(16), AllExpensesHorizontalList()],
        ),
      ),
    );
  }
}
