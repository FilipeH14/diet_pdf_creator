import 'package:diet_pdf_creator/app/modules/diet_generator/5_afternoon_snack/widgets/meal_afternoon_snack/meal_afternoon_snack_controller.dart';
import 'package:get/get.dart';

class MealAfternoonSnackBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MealAfternoonSnackController());
  }
  
}
