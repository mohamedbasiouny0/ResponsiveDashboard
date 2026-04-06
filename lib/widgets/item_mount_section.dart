import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/utils/app_styles.dart';

class ItemMountSection extends StatelessWidget {
  const ItemMountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text('Item mount', style: AppStyles.styleMedium16),
        const Gap(12),
        Container(
          padding: const .all(20),
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0xffFAFAFA),
            borderRadius: .circular(12),
          ),
          child: Row(
            children: [
              Text(
                'USD',
                style: AppStyles.styleRegular16.copyWith(
                  color: const Color(0xffAAAAAA),
                ),
              ),
              const Gap(10),
              SvgPicture.asset(Assets.imagesArrowDown),
            ],
          ),
        ),
      ],
    );
  }
}
