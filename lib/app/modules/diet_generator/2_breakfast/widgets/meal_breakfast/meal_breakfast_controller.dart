import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MealBreakfastController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  var breakfastValues = <String, dynamic>{}.obs;

  var breakfast = [];

  var breakfastMeal = <String, Meal>{};

  late Meal breakfastDiet;

  int indexBreakfast = 1;

  @override
  void onClose() {
    optionEC.dispose();
    amountEC.dispose();
    grammageEC.dispose();
    super.onClose();
  }

  void insertValues() {
    formKey.currentState?.save();

    breakfastDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    breakfastMeal.addEntries({
      'meal${indexBreakfast.toString()}': breakfastDiet,
    }.entries);

    log('$breakfastMeal');

    log('$breakfast');

    optionEC.clear();
    amountEC.clear();
    grammageEC.clear();

    indexBreakfast++;
  }

  void saveMealBreakfast() {
    final valid = formKey.currentState?.validate() ?? false;

    if (valid || breakfastMeal.isNotEmpty) Get.back(result: breakfastMeal);
  }
}
