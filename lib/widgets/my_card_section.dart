import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/custom_background_contanier.dart';
import 'package:test1/widgets/my_card_info.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text('My card', style: AppStyles.styleSemiBold20),
          const Gap(20),
          AspectRatio(
            aspectRatio: 420 / 215,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff4EB7F2),
                borderRadius: .circular(12),
                image: const DecorationImage(
                  image: AssetImage(Assets.imagesMaskGroup),
                ),
              ),
              child: const MyCardInfo(),
            ),
          ),
        ],
      ),
    );
  }
}
