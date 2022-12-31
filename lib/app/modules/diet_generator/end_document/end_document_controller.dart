import 'dart:developer';

import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_controller.dart';
import 'package:get/get.dart';

class EndDocumentController extends GetxController {

  RxString optionController = ''.obs;

  @override
  void onInit() {
    
    final breakfastData = Get.find<BreakfastController>();
    final option = breakfastData.dietTest['option'];

    log(option.toString());

    super.onInit();
  }
}
