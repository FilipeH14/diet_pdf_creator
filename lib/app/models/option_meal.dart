// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:diet_pdf_creator/app/models/meal.dart';
class OptionMeal {
  final String id;
  final Meal meal;

  OptionMeal({
    required this.id,
    required this.meal,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'meal': meal.toMap(),
    };
  }

  String toJson() => jsonEncode(toMap());

  factory OptionMeal.fromMap(Map<String, dynamic> map) {
    return OptionMeal(
      id: map['id'] ?? '',
      meal: Meal.fromMap(map['meal'] ?? ''),
    );
  }

  factory OptionMeal.fromJson(String json) =>
      OptionMeal.fromMap(jsonDecode(json));
}
