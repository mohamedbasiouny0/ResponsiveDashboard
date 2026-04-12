import 'package:flutter/material.dart';
import 'package:test1/widgets/custom_background_contanier.dart';
import 'package:test1/widgets/my_card_section.dart';
import 'package:test1/widgets/transaction_history_section.dart';

class RightSection extends StatelessWidget {
  const RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 32, right: 32, bottom: 32),
      child: CustomBackgroundContainer(
        padding: 24,
        child: Column(
          children: [
            MyCardSection(),
            Divider(height: 40, color: Color(0xffF1F1F1)),
            TransactionHistorySection(),
          ],
        ),
      ),
    );
  }
}
