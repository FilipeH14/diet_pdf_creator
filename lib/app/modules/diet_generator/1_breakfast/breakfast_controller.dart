import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreakfastController extends GetxController {
  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final grammageEC = TextEditingController();

  late final Meal breakfastDiet;

  void goToNextPage() {
    breakfastDiet = Meal(
      option: optionEC.text,
      amount: amountEC.text,
      grammage: grammageEC.text,
    );

    Get.toNamed(
      RoutesApplication.brunch,
      // arguments: breakfastDiet,
    );
  }
}
