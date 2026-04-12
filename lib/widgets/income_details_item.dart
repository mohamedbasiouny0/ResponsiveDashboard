import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({
    super.key,
    required this.color,
    required this.text,
    required this.percentage,
  });
  final Color color;
  final String text, percentage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 6, backgroundColor: color),
        const Gap(12),
        Text(text, style: AppStyles.styleRegular16),
        const Spacer(),
        Text(
          '$percentage%',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xff208CC8),
          ),
        ),
      ],
    );
  }
}
