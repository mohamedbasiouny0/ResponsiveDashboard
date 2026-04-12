import 'package:flutter/material.dart';

class TransactionItemModel {
  final String title, date, money;
  final Color moneyColor;

  const TransactionItemModel({
    required this.title,
    required this.date,
    required this.money,
    required this.moneyColor,
  });
}
