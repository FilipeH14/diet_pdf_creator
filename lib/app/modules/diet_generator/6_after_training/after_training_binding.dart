import 'package:diet_pdf_creator/app/modules/diet_generator/6_after_training/after_training_controller.dart';
import 'package:get/get.dart';

class AfterTrainingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AfterTrainingController());
  }
}
