import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MealLunchController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  var lunchValues = <String, dynamic>{}.obs;

  var lunch = [];

  var lunchMeal = <String, Meal>{};

  late Meal lunchDiet;

  int indexLunch = 1;

  @override
  void onClose() {
    optionEC.dispose();
    amountEC.dispose();
    grammageEC.dispose();
    super.onClose();
  }

  void insertValues() {
    formKey.currentState?.save();

    lunchDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    lunchMeal.addEntries({
      'meal${indexLunch.toString()}': lunchDiet,
    }.entries);

    optionEC.clear();
    amountEC.clear();
    grammageEC.clear();

    indexLunch++;
  }

  void saveMealLunch() {
    final valid = formKey.currentState?.validate() ?? false;

    if (valid || lunchMeal.isNotEmpty) Get.back(result: lunchMeal);
  }
}
