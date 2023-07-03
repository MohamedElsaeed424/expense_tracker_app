// this class to custom a widget to use it in expenses.dart file
import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {

  final List <Expense> expenses ;

  const ExpensesList({super.key, required this.expenses});
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: expenses.length, itemBuilder: ((context, index) => 
      Text(expenses[index].title) 
     )
    );
  
  }

}