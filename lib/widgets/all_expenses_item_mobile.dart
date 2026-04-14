import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/models/all_expenses_model.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/all_expenses_item_header.dart';

class AllExpensesItemMobile extends StatelessWidget {
  const AllExpensesItemMobile({super.key, required this.model});
  final AllExpensesModel model;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6,
      child: Container(
        padding: const .symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: .circular(12),
          color: const Color(0xff064061),
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            AllExpensesItemHeader(model: model),
            const Spacer(),
            FittedBox(
              fit: .scaleDown,
              alignment: .centerStart,
              child: Text(
                model.mainText,
                style: AppStyles.styleSemiBold16(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
            const Gap(8),
            FittedBox(
              fit: .scaleDown,
              alignment: .centerStart,
              child: Text(
                model.date,
                style: AppStyles.styleRegular14(
                  context,
                ).copyWith(color: const Color(0xffFAFAFA)),
              ),
            ),
            const Gap(16),
            FittedBox(
              fit: .scaleDown,
              alignment: .centerStart,
              child: Text(
                model.money,
                style: AppStyles.styleSemiBold24(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
