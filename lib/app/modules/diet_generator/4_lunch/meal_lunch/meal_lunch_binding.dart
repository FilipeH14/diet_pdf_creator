import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/meal_lunch/meal_lunch_controller.dart';
import 'package:get/get.dart';

class MealLunchBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MealLunchController());
  }
}
