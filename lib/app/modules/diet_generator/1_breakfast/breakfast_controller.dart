import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreakfastController extends GetxController {
  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  // final listOptionalBreakfast = <Meal>[].obs;
  // final mealsOptionalBreakfast = <List<Meal>>[].obs;

  List<Meal> listOptionalBreakfast = <Meal>[].obs;
  List<List<Meal>> mealsOptionalBreakfast = <List<Meal>>[].obs;

  late Meal breakfastDiet;

  void optionalBreakfast() {
    breakfastDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    listOptionalBreakfast.add(breakfastDiet);

    optionEC.text = '';
    amountEC.text = '';
    grammageEC.text = '';
  }

  void addBreakfast() {

    log('passou aqui!!!');

    mealsOptionalBreakfast.add(listOptionalBreakfast);

    log('${mealsOptionalBreakfast.length}');
  }

  void goToNextPage() => Get.toNamed(RoutesApplication.brunch);
}
