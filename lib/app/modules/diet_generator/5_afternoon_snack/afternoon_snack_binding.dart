import 'package:diet_pdf_creator/app/modules/diet_generator/5_afternoon_snack/afternoon_snack_controller.dart';
import 'package:get/get.dart';

class AfternoonSnackBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AfternoonSnackController());
  }
}
