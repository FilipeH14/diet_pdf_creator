import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MealAfternoonSnackController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  var mealAfternoonSnackValues = <String, dynamic>{}.obs;

  var mealAfternoonSnack = [];

  var mealAfternoonSnackMeal = <String, Meal>{};

  late Meal mealAfternoonSnackDiet;

  int indexMealAfternoonSnack = 1;

  @override
  void onClose() {
    optionEC.dispose();
    amountEC.dispose();
    grammageEC.dispose();
    super.onClose();
  }

  void insertValues() {
    formKey.currentState?.save();

    mealAfternoonSnackDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    mealAfternoonSnackMeal.addEntries({
      'meal${indexMealAfternoonSnack.toString()}':
          mealAfternoonSnackDiet,
    }.entries);

    log('$mealAfternoonSnackMeal');

    log('$mealAfternoonSnack');

    optionEC.clear();
    amountEC.clear();
    grammageEC.clear();

    indexMealAfternoonSnack++;
  }

  void saveAfternoonSnack() {
    final valid = formKey.currentState?.validate() ?? false;

    if (valid || mealAfternoonSnackMeal.isNotEmpty) {
      Get.back(result: mealAfternoonSnackMeal);
    }
  }
}
