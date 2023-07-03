import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

final formatter = DateFormat.yMd();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.fastfood_rounded,
  Category.work: Icons.work,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie
};

class Expense {
  final String title;
  final String id;
  final double amount;
  final DateTime date;
  final Category category;

  Expense(
      {required this.title,
      required this.date,
      required this.category,
      required this.amount})
      : id = uuid.v4();

  String get formattedDate {
    return formatter.format(date);
  }
}
