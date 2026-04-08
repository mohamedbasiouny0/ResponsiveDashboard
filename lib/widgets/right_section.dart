import 'package:flutter/material.dart';
import 'package:test1/widgets/my_card_section.dart';

class RightSection extends StatelessWidget {
  const RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Column(children: [MyCardSection()]),
    );
  }
}
