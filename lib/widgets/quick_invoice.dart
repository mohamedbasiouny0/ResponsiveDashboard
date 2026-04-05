import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/widgets/latest_transaction_section.dart';
import 'package:test1/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [QuickInvoiceHeader(), Gap(24), LatestTransactionSection()],
    );
  }
}
