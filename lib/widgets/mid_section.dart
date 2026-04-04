import 'package:flutter/Material.dart';
import 'package:test1/widgets/all_expenses.dart';
import 'package:test1/widgets/custom_background_contanier.dart';

class MidSection extends StatelessWidget {
  const MidSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: CustomBackgroundContainer(
        padding: 20,
        child: AllExpenses(),
      ),
    );
  }
}

