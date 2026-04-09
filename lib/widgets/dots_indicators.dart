import 'package:flutter/material.dart';
import 'package:test1/widgets/custom_dot_indicator.dart';

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return CustomDotIndicator(isActive: index == currentIndex);
      }),
    );
  }
}
