
import 'package:flutter/material.dart';
import 'package:test1/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [QuickInvoiceHeader()]);
  }
}
