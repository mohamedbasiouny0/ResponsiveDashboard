import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/widgets/income_section.dart';
import 'package:test1/widgets/my_card_section.dart';
import 'package:test1/widgets/transaction_history_section.dart';

class RightSection extends StatelessWidget {
  const RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 32, right: 32, bottom: 32),
      child: Column(
        children: [
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
