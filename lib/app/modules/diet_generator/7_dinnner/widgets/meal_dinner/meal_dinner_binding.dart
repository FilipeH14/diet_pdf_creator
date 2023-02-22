import 'package:get/get.dart';
import './meal_dinner_controller.dart';

class MealDinnerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MealDinnerController());
  }
}
