import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/custom_background_contanier.dart';
import 'package:test1/widgets/dots_indicators.dart';
import 'package:test1/widgets/my_cards_page_view.dart';

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
          const MyCardsPageView(),
          const Gap(20),
          const DotsIndicators(),
        ],
      ),
    );
  }
}
