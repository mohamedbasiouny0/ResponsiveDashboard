import 'package:flutter/material.dart';
import 'package:test1/models/all_expenses_model.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/all_expenses_item.dart';

class AllExpensesHorizontalList extends StatefulWidget {
  const AllExpensesHorizontalList({super.key});

  @override
  State<AllExpensesHorizontalList> createState() =>
      _AllExpensesHorizontalListState();
}

class _AllExpensesHorizontalListState extends State<AllExpensesHorizontalList> {
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
    return Row(
      mainAxisSize: .min,
      children: items
          .asMap()
          .entries
          .map(
            (e) => Expanded(
              child: GestureDetector(
                onTap: () {
                  if (currentIndex != e.key) {
                    currentIndex = e.key;
                    setState(() {});
                  }
                },
                child: AllExpensesItem(
                  selected: currentIndex == e.key,
                  model: items[e.key],
                  lastItem: e.key == items.length - 1,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}


// List.generate(
//         items.length,
//         (index) => Expanded(
//           child: GestureDetector(
//             onTap: () {
//               if (currentIndex != index) {
//                 currentIndex = index;
//                 setState(() {});
//               }
//             },
//             child: AllExpensesItem(
//               selected: currentIndex == index,
//               model: items[index],
//               lastItem: index == items.length - 1,
//             ),
//           ),
//         ),
//       ),