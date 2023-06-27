import 'package:flutter/material.dart';
import 'package:add_your_expenses/models/expense.dart';

class ExpenseItems extends StatelessWidget {
  const ExpenseItems(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        child: Column(children: [
          Text(expense.title),
          const SizedBox(
            height: 4,
          ),
          Row(children: [
            Text('\$${expense.amount.toStringAsFixed(2)}'),
            const Spacer(),
            Row(
              children: [
                Icon(categoryIcon[expense.category]),
                const SizedBox(
                  width: 8,
                ),
                Text(expense.formattedDate),
              ],
            ),
          ])
        ]),
      ),
    );
  }
}
