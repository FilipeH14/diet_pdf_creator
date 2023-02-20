import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_controller.dart';
import 'package:get/get.dart';


class BrunchBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BreakfastController(), permanent: true);
    Get.put(BrunchController(), permanent: true);
  }
  
}
