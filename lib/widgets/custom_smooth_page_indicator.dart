import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({
    super.key,
    required this.pageController,
    this.isMobile,
  });

  final PageController pageController;
  final bool? isMobile;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      onDotClicked: (index) {
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      controller: pageController,
      count: 3,
      effect: ExpandingDotsEffect(
        expansionFactor: 3,
        spacing: 5,
        dotWidth: 8,
        dotHeight: 8,
        dotColor: const Color(0xffE8E8E8),
        activeDotColor: isMobile ?? false
            ? const Color(0xff064061)
            : const Color(0xff4EB7F2),
      ),
    );
  }
}
