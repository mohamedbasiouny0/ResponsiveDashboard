import 'package:flutter/material.dart';
import 'package:test1/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: .circular(12)),
      elevation: 0,
      child: ListTile(
        contentPadding: const .all(16),
        title: Text('Cash Withdrawal', style: AppStyles.styleSemiBold16),
        subtitle: Text(
          '13 Apr, 2022',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          '\$20,129',
          style: AppStyles.styleSemiBold20.copyWith(
            color: const Color(0xffF3735E),
          ),
        ),
      ),
    );
  }
}
