import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/meal_brunch/meal_brunch_controller.dart';
import 'package:get/get.dart';

class MealBrunchBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MealBrunchController());
  }
}
