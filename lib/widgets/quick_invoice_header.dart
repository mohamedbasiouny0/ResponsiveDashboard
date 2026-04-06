import 'package:flutter/material.dart';
import 'package:test1/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(shape: .circle, color: Color(0xffFAFAFA)),
          child: const Icon(Icons.add, color: Color(0xff4EB7F2), size: 18),
        ),
      ],
    );
  }
}
