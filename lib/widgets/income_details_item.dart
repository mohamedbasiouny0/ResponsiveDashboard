import 'package:flutter/material.dart';
import 'package:test1/models/income_item_model.dart';
import 'package:test1/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.model});
  final IncomeItemModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: .zero,
      leading: CircleAvatar(radius: 6, backgroundColor: model.circleColor),
      title: Text(
        model.text,
        style: AppStyles.styleRegular16(context),
        maxLines: 2,
      ),
      trailing: Text(
        '${model.percentage}%',
        style: AppStyles.styleMedium16(
          context,
        ).copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
