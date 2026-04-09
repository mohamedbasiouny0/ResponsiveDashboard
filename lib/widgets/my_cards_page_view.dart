import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:test1/widgets/credit_card_widget.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      scrollDirection: .horizontal,
      children: List.generate(3, (index) => const CreditCardWidget()),
    );
  }
}
