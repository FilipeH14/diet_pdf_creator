import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BrunchController extends GetxController {
  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  final getBreakfast = Get.find<BreakfastController>();
  late final Meal breakfastDiet;
  late final Meal brunchDiet;

  @override
  void onInit() {

    breakfastDiet = Meal(
      option: getBreakfast.breakfastDiet.option,
      amount: getBreakfast.breakfastDiet.amount,
      grammage: getBreakfast.breakfastDiet.grammage,
    );

    super.onInit();
  }

  void goToNextPage() {

    brunchDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    Get.toNamed(RoutesApplication.endDocument);
  }
}
