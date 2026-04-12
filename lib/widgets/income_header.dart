import 'package:flutter/material.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/range_options.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Income', style: AppStyles.styleSemiBold20),
        const Spacer(),
        const RangeOptions(),
      ],
    );
  }
}
