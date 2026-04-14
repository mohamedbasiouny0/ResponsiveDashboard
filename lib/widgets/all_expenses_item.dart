import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/models/all_expenses_model.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.selected,
    required this.model,
    required this.lastItem,
  });
  final AllExpensesModel model;
  final bool selected, lastItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .symmetric(horizontal: 20, vertical: 16),
      margin: .only(right: lastItem ? 0 : 12),
      decoration: BoxDecoration(
        borderRadius: .circular(12),
        color: selected ? const Color(0xff4EB7F2) : Colors.white,
        border: selected ? null : .all(color: const Color(0xffF1F1F1), width: 1),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          AllExpensesItemHeader(model: model, selected: selected),
          const Gap(34),
          Text(
            model.mainText,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: selected ? Colors.white : const Color(0xff064061),
            ),
          ),
          const Gap(8),
          Text(
            model.date,
            style: AppStyles.styleRegular14(context).copyWith(
              color: selected ? const Color(0xffFAFAFA) : const Color(0xffAAAAAA),
            ),
          ),
          const Gap(16),
          Text(
            model.money,
            style: AppStyles.styleSemiBold24(context).copyWith(
              color: selected ? Colors.white : const Color(0xff4EB7F2),
            ),
          ),
        ],
      ),
    );
  }
}
