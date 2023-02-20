import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_controller.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LunchController extends GetxController {
  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  final listOptionalLunch = <Meal>[].obs;

  final getBrunch = Get.find<BrunchController>();

  late final List<Meal> brunchDiet;

  late Meal lunchDiet;

  @override
  void onInit() {
    // breakfastDiet = Meal(
    //   option: getBreakfast.breakfastDiet.option,
    //   amount: getBreakfast.breakfastDiet.amount,
    //   grammage: getBreakfast.breakfastDiet.grammage,
    // );

    brunchDiet = getBrunch.listOptionalBrunch;

    super.onInit();
  }

  void optionalBrunch() {
    lunchDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    listOptionalLunch.add(lunchDiet);

    optionEC.text = '';
    amountEC.text = '';
    grammageEC.text = '';
  }

  void goToNextPage() => Get.toNamed(RoutesApplication.endDocument);
}
