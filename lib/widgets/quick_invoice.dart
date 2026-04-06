import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/custom_background_contanier.dart';
import 'package:test1/widgets/custom_text_form_field.dart';
import 'package:test1/widgets/latest_transaction_section.dart';
import 'package:test1/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          QuickInvoiceHeader(),
          Gap(24),
          LatestTransactionSection(),
          Divider(height: 48, thickness: 1, color: Color(0xffF1F1F1)),

          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  title: 'Customer name',
                  hintText: 'Type customer name',
                ),
              ),
              Gap(16),
              Expanded(
                child: CustomTextFormField(
                  title: 'Customer email',
                  hintText: 'Type customer email',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  title: 'Customer name',
                  hintText: 'Type customer name',
                ),
              ),
              Gap(16),
              Expanded(
                child: CustomTextFormField(
                  title: 'Customer email',
                  hintText: 'Type customer email',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
