import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formater = DateFormat.yMd();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.food_bank_outlined,
  Category.leisure: Icons.movie,
  Category.travel: Icons.airplanemode_active_outlined,
  Category.work: Icons.work,
};

class Expense {
  Expense(
      {required this.description,
      required this.category,
      required this.price,
      required this.title,
      required this.dateTime})
      : id = uuid.v4();
  final String id;
  final String title;
  final String description;
  final double price;
  final DateTime dateTime;
  final Category category;

  String get formattedDate {
    return formater.format(dateTime);
  }
}
