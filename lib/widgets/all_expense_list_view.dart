import 'package:flutter/material.dart';
import 'package:test1/models/all_expenses_model.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/all_expenses_item.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  int currentIndex = 0;

  List<AllExpensesModel> allExpensesModelList = [
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
    return Row(
      mainAxisSize: .min,
      children: List.generate(
        allExpensesModelList.length,
        (index) => GestureDetector(
          onTap: () {
            if (currentIndex != index) {
              currentIndex = index;
              setState(() {});
            }
          },
          child: AllExpensesItem(
            selected: currentIndex == index,
            model: allExpensesModelList[index],
            lastItem: index == 2,
          ),
        ),
      ),
    );
  }
}
