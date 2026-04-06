import 'package:flutter/Material.dart';
import 'package:gap/gap.dart';
import 'package:test1/widgets/all_expenses.dart';
import 'package:test1/widgets/quick_invoice.dart';

class MidSection extends StatelessWidget {
  const MidSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: SingleChildScrollView(
        child: Column(children: [AllExpenses(), Gap(24), QuickInvoice()]),
      ),
    );
  }
}
