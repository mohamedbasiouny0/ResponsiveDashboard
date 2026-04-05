import 'package:flutter/material.dart';
import 'package:test1/utils/app_styles.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('Latest Transaction', style: AppStyles.styleMedium16),],
    );
  }
}
