
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/utils/app_styles.dart';

class AllExpensesRow extends StatelessWidget {
  const AllExpensesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20),
        Spacer(),
        Container(
          padding: .all(12),
          width: 134,
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffF1F1F1)),
            borderRadius: .circular(12),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Text('Monthly', style: AppStyles.styleMedium16),
              Gap(18),
              SvgPicture.asset(Assets.imagesArrowDown),
            ],
          ),
        ),
      ],
    );
  }
}
