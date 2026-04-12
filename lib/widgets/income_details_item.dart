import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/models/income_item_model.dart';
import 'package:test1/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.model});
  final IncomeItemModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 6, backgroundColor: model.circleColor),
        const Gap(12),
        Text(model.text, style: AppStyles.styleRegular16),
        const Spacer(),
        Text(
          '${model.percentage}%',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xff208CC8),
          ),
        ),
      ],
    );
  }
}
