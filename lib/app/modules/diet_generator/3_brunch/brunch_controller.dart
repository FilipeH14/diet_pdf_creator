import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BrunchController extends GetxController {
  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  final listOptionalBrunch = <Meal>[].obs;

  final getBreakfast = Get.find<BreakfastController>();

  // late final Meal breakfastDiet;
  late final List<Meal> breakfastDiet;

  late Meal brunchDiet;

  @override
  void onInit() {
    // breakfastDiet = Meal(
    //   option: getBreakfast.breakfastDiet.option,
    //   amount: getBreakfast.breakfastDiet.amount,
    //   grammage: getBreakfast.breakfastDiet.grammage,
    // );

    // breakfastDiet = getBreakfast.listOptionalBreakfast;

    super.onInit();
  }

  void optionalBrunch() {
    brunchDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    listOptionalBrunch.add(brunchDiet);

    optionEC.text = '';
    amountEC.text = '';
    grammageEC.text = '';
  }

  void goToNextPage() => Get.toNamed(RoutesApplication.lunch);
}
