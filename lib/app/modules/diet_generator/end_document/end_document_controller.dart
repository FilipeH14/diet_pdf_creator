import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_controller.dart';
import 'package:get/get.dart';

class EndDocumentController extends GetxController {
  late final Meal meal;

  @override
  void onInit() {
    meal = Get.arguments as Meal;

    // final breakfastController = Get.find<BreakfastController>();

    final data = meal.toString();

    log(data);

    super.onInit();
  }
}
