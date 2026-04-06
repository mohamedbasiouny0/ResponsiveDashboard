import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .all(12),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffF1F1F1)),
        borderRadius: .circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Text('Monthly', style: AppStyles.styleMedium16),
          const Gap(18),
          SvgPicture.asset(Assets.imagesArrowDown),
        ],
      ),
    );
  }
}
