import 'package:get/get.dart';
import './meal_after_training_controller.dart';

class MealAfterTrainingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MealAfterTrainingController());
  }
}
