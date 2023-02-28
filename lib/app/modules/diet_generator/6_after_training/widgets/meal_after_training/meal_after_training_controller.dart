import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MealAfterTrainingController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  var mealAfterTrainingValues = <String, dynamic>{}.obs;

  var lunmealAfterTrainingch = [];

  var mealAfterTrainingMeal = <String, Meal>{};

  late Meal mealAfterTrainingDiet;

  int indexMealAfterTraining = 1;

  void insertValues() {
    formKey.currentState?.save();

    mealAfterTrainingDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    mealAfterTrainingMeal.addEntries({
      'meal${indexMealAfterTraining.toString()}': mealAfterTrainingDiet,
    }.entries);

    optionEC.clear();
    amountEC.clear();
    grammageEC.clear();

    indexMealAfterTraining++;
  }

  void saveMealAfterTraining() {
    final valid = formKey.currentState?.validate() ?? false;

    if (valid || mealAfterTrainingMeal.isNotEmpty) {
      Get.back(result: mealAfterTrainingMeal);
    }
  }
}
