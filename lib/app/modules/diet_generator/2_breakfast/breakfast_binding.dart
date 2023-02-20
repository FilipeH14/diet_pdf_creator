import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_controller.dart';
import 'package:get/get.dart';


class BreakfastBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BreakfastController(), permanent: true);
  }
  
}
