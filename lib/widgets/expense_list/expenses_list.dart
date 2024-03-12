import 'package:expenses_tracker_app/model/expense.dart';
import 'package:expenses_tracker_app/widgets/expense_list/expenses_iteams.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpensesIteams(expenses[index]),
    );
  }
}
