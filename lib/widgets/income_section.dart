import 'package:flutter/material.dart';
import 'package:test1/widgets/custom_background_contanier.dart';
import 'package:test1/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(children: [IncomeHeader()]),
    );
  }
}
