import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/utils/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.selected});
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 216,
      padding: .only(right: 20, left: 20, top: 16),
      margin: .only(right: 12),
      decoration: BoxDecoration(
        borderRadius: .circular(12),
        color: selected ? Color(0xff4EB7F2) : Colors.white,
        border: selected ? null : .all(color: Color(0xffF1F1F1), width: 1),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Assets.imagesBalance,
                  colorFilter: .mode(
                    selected ? Colors.white : Color(0xff4EB7F2),
                    .srcIn,
                  ),
                ),
                style: IconButton.styleFrom(
                  backgroundColor: selected
                      ? Colors.white.withAlpha(26)
                      : Colors.black.withAlpha(6),
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                enableFeedback: false,
                constraints: BoxConstraints(minHeight: 30, minWidth: 30),
                style: IconButton.styleFrom(overlayColor: Colors.transparent),
                icon: SvgPicture.asset(
                  Assets.imagesArrowRight,
                  colorFilter: .mode(
                    selected ? Colors.white : Color(0xff064061),
                    .srcIn,
                  ),
                ),
              ),
            ],
          ),
          Gap(34),
          Text(
            'Balance',
            style: AppStyles.styleSemiBold16.copyWith(
              color: selected ? Colors.white : Color(0xff064061),
            ),
          ),
          Gap(8),
          Text(
            'April 2022',
            style: AppStyles.styleRegular14.copyWith(
              color: selected ? Color(0xffFAFAFA) : Color(0xffAAAAAA),
            ),
          ),
          Gap(16),
          Text(
            '\$20,129',
            style: AppStyles.styleSemiBold24.copyWith(
              color: selected ? Colors.white : Color(0xff4EB7F2),
            ),
          ),
        ],
      ),
    );
  }
}
