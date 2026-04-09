import 'package:flutter/material.dart';
import 'package:test1/widgets/custom_dot_indicator.dart';

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => const CustomDotIndicator(isActive: false),
      ),
    );
  }
}
