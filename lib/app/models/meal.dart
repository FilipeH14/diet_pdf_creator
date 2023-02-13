import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class Meal {
  final String? option;
  final String? amount;
  final String? grammage;

  Meal({
    this.option,
    this.amount,
    this.grammage,
  });

  @override
  String toString() => 'Meal(option: $option, amount: $amount, grammage: $grammage)';

  Map<String, dynamic> toMap() {
    return {
      'option': option,
      'amount': amount,
      'grammage': grammage,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      option: map['option'] ?? '',
      amount: map['amount'] ?? '',
      grammage: map['grammage'] ?? '',
    );
  }

  factory Meal.fromJson(String json) => Meal.fromMap(jsonDecode(json));
}
