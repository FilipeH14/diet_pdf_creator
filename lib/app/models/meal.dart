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
    return <String, dynamic>{
      'option': option,
      'amount': amount,
      'grammage': grammage,
    };
  }

  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      option: map['option'] != null ? map['option'] as String : null,
      amount: map['amount'] != null ? map['amount'] as String : null,
      grammage: map['grammage'] != null ? map['grammage'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Meal.fromJson(String source) => Meal.fromMap(json.decode(source) as Map<String, dynamic>);
}
