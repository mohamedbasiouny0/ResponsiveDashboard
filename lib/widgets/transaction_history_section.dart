import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/custom_background_contanier.dart';
import 'package:test1/widgets/transaction_history_header.dart';
import 'package:test1/widgets/transaction_history_item_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 20,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          const TransactionHistoryHeader(),
          const Gap(20),
          Text(
            '13 April 2022',
            style: AppStyles.styleMedium16.copyWith(
              color: const Color(0xffAAAAAA),
            ),
          ),
          const Gap(16),
          const TransactionHistoryItemListView(),
        ],
      ),
    );
  }
}
