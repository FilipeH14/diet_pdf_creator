import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MealDinnerController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  var dinnerValues = <String, dynamic>{}.obs;

  var dinner = [];

  var dinnerMeal = <String, Meal>{};

  late Meal dinnerDiet;

  int indexDinner = 1;

  @override
  void onClose() {
    optionEC.dispose();
    amountEC.dispose();
    grammageEC.dispose();
    super.onClose();
  }

  void insertValues() {
    formKey.currentState?.save();

    dinnerDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    dinnerMeal.addEntries({
      'meal${indexDinner.toString()}': dinnerDiet,
    }.entries);

    optionEC.clear();
    amountEC.clear();
    grammageEC.clear();

    indexDinner++;
  }

  void saveMealDinner() {
    final valid = formKey.currentState?.validate() ?? false;

    if (valid || dinnerMeal.isNotEmpty) Get.back(result: dinnerMeal);
  }
}
