import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MealAfternoonSnackController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  var mealAfternoonSnackControllerValues = <String, dynamic>{}.obs;

  var mealAfternoonSnackController = [];

  var mealAfternoonSnackControllerMeal = <String, Meal>{};

  late Meal mealAfternoonSnackControllerDiet;

  int indexMealAfternoonSnackController = 1;

  void insertValues() {
    formKey.currentState?.save();

    mealAfternoonSnackControllerDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    mealAfternoonSnackControllerMeal.addEntries({
      'meal${indexMealAfternoonSnackController.toString()}':
          mealAfternoonSnackControllerDiet,
    }.entries);

    log('$mealAfternoonSnackControllerMeal');

    log('$mealAfternoonSnackController');

    optionEC.clear();
    amountEC.clear();
    grammageEC.clear();

    indexMealAfternoonSnackController++;
  }

  void saveAfternoonSnack() => Get.back(result: mealAfternoonSnackControllerMeal);
}