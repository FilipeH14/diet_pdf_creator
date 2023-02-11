import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/widgets/meal_breakfast/meal_breakfast_controller.dart';
import 'package:get/get.dart';

class MealBreakfastBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MealBreakfastController());
  }
}
