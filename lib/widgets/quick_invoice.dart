import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/custom_background_contanier.dart';
import 'package:test1/widgets/custom_text_form_field.dart';
import 'package:test1/widgets/item_mount_section.dart';
import 'package:test1/widgets/latest_transaction_section.dart';
import 'package:test1/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          QuickInvoiceHeader(),
          Gap(24),
          LatestTransactionSection(),
          Divider(height: 48, thickness: 1, color: Color(0xffF1F1F1)),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.textStyle,
    required this.backgroundColor,
  });
  final VoidCallback onPressed;
  final String text;
  final TextStyle textStyle;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,

          shape: RoundedRectangleBorder(borderRadius: .circular(12)),
          overlayColor: Colors.grey,
          elevation: 0,
        ),
        child: Text(text, style: textStyle),
      ),
    );
  }
}

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
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
        const Gap(24),
        const Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            Gap(16),
            Expanded(child: ItemMountSection()),
          ],
        ),
        const Gap(24),
        Row(
          mainAxisAlignment: .center,
          children: [
            Expanded(
              child: CustomElevatedButton(
                onPressed: () {},
                text: 'Add more details',
                textStyle: AppStyles.styleSemiBold18.copyWith(
                  color: const Color(0xff4EB7F2),
                ),
                backgroundColor: Colors.white,
              ),
            ),
            const Gap(24),
            Expanded(
              child: CustomElevatedButton(
                onPressed: () {},
                text: 'Send Money',
                textStyle: AppStyles.styleSemiBold18,
                backgroundColor: const Color(0xff4EB7F2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
