import 'package:flutter/material.dart';
import 'package:test1/widgets/all_expenses_item.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 216,
      child: ListView.builder(
        scrollDirection: .horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (currentIndex != index) {
                currentIndex = index;
                setState(() {});
              }
            },
            child: AllExpensesItem(selected: currentIndex == index),
          );
        },
      ),
    );
  }
}
