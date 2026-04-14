import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:test1/models/all_expenses_model.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/all_expenses_item_mobile.dart';

class AllExpensesPageViewMobile extends StatefulWidget {
  const AllExpensesPageViewMobile({super.key, required this.controller});
  final PageController controller;

  @override
  State<AllExpensesPageViewMobile> createState() =>
      _AllExpensesPageViewMobileState();
}

class _AllExpensesPageViewMobileState extends State<AllExpensesPageViewMobile> {
  int currentIndex = 0;

  List<AllExpensesModel> items = [
    AllExpensesModel(
      headerIconImage: Assets.imagesBalance,
      mainText: 'Balance',
      date: 'April 2022',
      money: '\$20,129',
    ),
    AllExpensesModel(
      headerIconImage: Assets.imagesIncome,
      mainText: 'Income',
      date: 'April 2022',
      money: '\$20,129',
    ),
    AllExpensesModel(
      headerIconImage: Assets.imagesExpenses,
      mainText: 'Expenses',
      date: 'April 2022',
      money: '\$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      scrollDirection: .horizontal,
      controller: widget.controller,
      children: items
          .asMap()
          .entries
          .map(
            (e) => GestureDetector(
              onTap: () {
                if (currentIndex != e.key) {
                  currentIndex = e.key;
                  setState(() {});
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: AllExpensesItemMobile(model: e.value),
              ),
            ),
          )
          .toList(),
    );
  }
}
