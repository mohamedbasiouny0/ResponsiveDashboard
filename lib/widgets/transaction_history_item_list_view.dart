import 'package:flutter/material.dart';
import 'package:test1/models/transaction_item_model.dart';
import 'package:test1/widgets/transaction_history_item.dart';

class TransactionHistoryItemListView extends StatelessWidget {
  const TransactionHistoryItemListView({super.key});

  static const List<TransactionItemModel> modelList = [
    TransactionItemModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: '20,129',
      isWithDrawal: true,
    ),
    TransactionItemModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '2000',
      isWithDrawal: false,
    ),
    TransactionItemModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '20,129',
      isWithDrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: modelList.map((e) => TransactionHistoryItem(model: e)).toList(),
    );
  }
}
