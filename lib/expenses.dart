import 'package:flutter/material.dart';

import 'models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Chiken",
        date: DateTime.now(),
        category: Category.food,
        amount: 11.2),
    Expense(
        title: "Trip ",
        date: DateTime.now(),
        category: Category.travel,
        amount: 111.9)
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Text('Hello'), Text('Iam')],
      ),
    );
  }
}
