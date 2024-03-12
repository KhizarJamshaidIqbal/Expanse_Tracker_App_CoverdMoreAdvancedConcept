import 'package:expenses_tracker_app/model/expense.dart';
import 'package:expenses_tracker_app/widgets/expense_list/expenses_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return ExpensesState();
  }
}

class ExpensesState extends State<Expenses> {
  final List<Expense> _addExpenses = [
    Expense(
      description: 'dsfdffffffff',
      category: Category.food,
      price: 19.99,
      title: 'Flutter Course',
      dateTime: DateTime.now(),
    ),
    Expense(
      description: 'dsfdffffffff',
      category: Category.leisure,
      price: 19.99,
      title: 'Flutter Course2',
      dateTime: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Chart'),
          Expanded(
            child: ExpensesList(expenses: _addExpenses),
          ),
        ],
      ),
    );
  }
}
