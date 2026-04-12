import 'package:flutter/material.dart';
import 'package:test1/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Transaction History', style: AppStyles.styleSemiBold20),
        const Spacer(),
        Text(
          'See all',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
