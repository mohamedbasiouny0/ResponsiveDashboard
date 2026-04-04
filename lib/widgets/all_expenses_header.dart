import 'package:flutter/material.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20),
        Spacer(),
        RangeOptions(),
      ],
    );
  }
}

