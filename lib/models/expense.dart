import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  final String title;
  final String id;
  final double amount;
  final DateTime date;
  final Category category ;

  Expense({required this.title, required this.date,  required this.category, required this.amount})
      : id = uuid.v4();
}
