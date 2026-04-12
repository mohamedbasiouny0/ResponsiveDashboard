import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:test1/widgets/credit_card_widget.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: .horizontal,
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.all(8.0),
          child: CreditCardWidget(),
        ),
      ),
    );
  }
}
