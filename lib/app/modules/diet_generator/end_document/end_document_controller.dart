import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_controller.dart';
import 'package:get/get.dart';

class EndDocumentController extends GetxController {

  late Meal meal;

  @override
  void onInit() {
    
    final breakfastData = Get.find<BreakfastController>().addListener(() { });

    super.onInit();
  }
}
