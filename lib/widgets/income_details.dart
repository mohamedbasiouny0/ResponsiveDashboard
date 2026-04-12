import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesIncomeCircle),
        const Gap(40),
        const Expanded(
          child: Column(
            children: [
              IncomeDetailsItem(
                color: Colors.black,
                text: 'Design service',
                percentage: '40',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
