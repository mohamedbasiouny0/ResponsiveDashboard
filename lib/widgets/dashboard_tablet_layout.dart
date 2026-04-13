import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/widgets/all_expenses.dart';
import 'package:test1/widgets/custom_drawer.dart';
import 'package:test1/widgets/income_section.dart';
import 'package:test1/widgets/my_card_section.dart';
import 'package:test1/widgets/quick_invoice.dart';
import 'package:test1/widgets/transaction_history_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomDrawer(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: ListView(
              children: const [
                AllExpenses(),
                Gap(24),
                QuickInvoice(),
                Gap(24),
                MyCardSection(),
                Gap(24),
                TransactionHistorySection(),
                Gap(24),
                IncomeSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
