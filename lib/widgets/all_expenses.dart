import 'package:flutter/Material.dart';
import 'package:test1/widgets/all_expenses_row.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: AllExpensesRow(),
    );
  }
}
