import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/models/transaction_item_model.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/custom_background_contanier.dart';
import 'package:test1/widgets/transaction_history_header.dart';
import 'package:test1/widgets/transaction_history_item.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          const TransactionHistoryHeader(),
          const Gap(20),
          Align(
            alignment: .centerLeft,
            child: Text(
              '13 April 2022',
              style: AppStyles.styleMedium16.copyWith(
                color: const Color(0xffAAAAAA),
              ),
            ),
          ),
          const Gap(16),
          const TransactionHistoryItemListView(),
        ],
      ),
    );
  }
}

class TransactionHistoryItemListView extends StatelessWidget {
  const TransactionHistoryItemListView({super.key});

  static const List<TransactionItemModel> modelList = [
    TransactionItemModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      money: '20,129',
      moneyColor: Color(0xffF3735E),
    ),
    TransactionItemModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      money: '2000',
      moneyColor: Color(0xff7DD97B),
    ),
    TransactionItemModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      money: '20,129',
      moneyColor: Color(0xff7DD97B),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: modelList.map((e) => TransactionHistoryItem(model: e)).toList(),
    );
  }
}
