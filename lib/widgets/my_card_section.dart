import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/custom_background_contanier.dart';
import 'package:test1/widgets/custom_smooth_page_indicator.dart';
import 'package:test1/widgets/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text('My card', style: AppStyles.styleSemiBold20),
        const Gap(20),
        MyCardsPageView(pageController: pageController),
        const Gap(20),
        CustomSmoothPageIndicator(pageController: pageController),
      ],
    );
  }
}
