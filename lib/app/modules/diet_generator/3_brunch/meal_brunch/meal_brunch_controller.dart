import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MealBrunchController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  var brunchValues = <String, dynamic>{}.obs;

  var brunch = [];

  var brunchMeal = <String, Meal>{};

  late Meal brunchDiet;

  int indexBrunch = 1;

  void insertValues() {
    formKey.currentState?.save();

    brunchDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    brunchMeal.addEntries({
      'meal${indexBrunch.toString()}': brunchDiet,
    }.entries);

    log('$brunchMeal');

    log('$brunch');

    optionEC.clear();
    amountEC.clear();
    grammageEC.clear();

    indexBrunch++;
  }

  void saveMealBrunch() => Get.back(result: brunchMeal);
}
