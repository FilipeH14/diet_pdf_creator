import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BrunchController extends GetxController {
  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  late final Meal breakfastMeal;

  @override
  void onInit() {
    breakfastMeal = Get.arguments as Meal;
    final data = breakfastMeal.toString();

    log(data);

    super.onInit();
  }

  void goToNextPage() {
    final breakfastDiet = Meal(
      option: breakfastMeal.option.toString(),
      amount: breakfastMeal.amount.toString(),
      grammage: breakfastMeal.grammage.toString(),
    );

    final brunchDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    List<Meal> brunch = [breakfastDiet, brunchDiet];

    Get.toNamed(
      RoutesApplication.endDocument,
      arguments: brunch,
    );
  }
}
