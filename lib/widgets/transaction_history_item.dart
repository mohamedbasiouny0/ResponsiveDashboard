import 'package:flutter/material.dart';
import 'package:test1/models/transaction_item_model.dart';
import 'package:test1/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.model});
  final TransactionItemModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: .circular(12)),
      elevation: 0,
      child: ListTile(
        contentPadding: const .all(16),
        title: Text(model.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(
          model.date,
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          '\$${model.money}',
          style: AppStyles.styleSemiBold20.copyWith(color: model.moneyColor),
        ),
      ),
    );
  }
}
