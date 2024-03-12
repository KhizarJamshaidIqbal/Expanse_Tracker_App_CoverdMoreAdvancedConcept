import 'package:expenses_tracker_app/model/expense.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpensesIteams extends StatelessWidget {
  const ExpensesIteams(this.expenses, {super.key});
  final Expense expenses;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 20, 82, 173),
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            expenses.title,
            textAlign: TextAlign.start,
            style: GoogleFonts.notoSerif(
              textStyle: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 6.5,
          ),
          Text(
            expenses.description,
            textAlign: TextAlign.start,
            style: GoogleFonts.notoSerif(
              textStyle: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 6.5,
          ),
          Row(
            children: [
              Text(
                'PKR ${expenses.price.toStringAsFixed(2)}',
                textAlign: TextAlign.start,
                style: GoogleFonts.notoSerif(
                  textStyle: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Icon(
                    categoryIcons[expenses.category],
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    expenses.formattedDate,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.notoSerif(
                      textStyle:
                          const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
