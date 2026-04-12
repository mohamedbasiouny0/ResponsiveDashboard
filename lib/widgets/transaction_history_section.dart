import 'package:flutter/material.dart';
import 'package:test1/widgets/transaction_history_header.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [TransactionHistoryHeader()]);
  }
}
