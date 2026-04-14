import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/size_config.dart';
import 'package:test1/widgets/all_expenses.dart';
import 'package:test1/widgets/income_section.dart';
import 'package:test1/widgets/my_card_section.dart';
import 'package:test1/widgets/quick_invoice.dart';
import 'package:test1/widgets/transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        MediaQuery.widthOf(context) < SizeConfig.tablet ? 16 : 0,
      ),
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
    );
  }
}
