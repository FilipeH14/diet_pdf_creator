import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_brunch/brunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_lunch/lunch_controller.dart';
import 'package:get/get.dart';

class LunchBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BreakfastController(), permanent: true);
    Get.put(BrunchController(), permanent: true);
    Get.put(LunchController(), permanent: true);
  }
  
}
