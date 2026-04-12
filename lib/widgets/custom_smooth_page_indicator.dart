import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: const ExpandingDotsEffect(
        expansionFactor: 3,
        spacing: 5,
        dotWidth: 8,
        dotHeight: 8,
        dotColor: Color(0xffE8E8E8),
        activeDotColor: Color(0xff4EB7F2),
      ),
    );
  }
}
