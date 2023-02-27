import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/lunch_controller.dart';
import 'package:get/get.dart';
import './end_document_controller.dart';

class EndDocumentBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BreakfastController(), permanent: true);
    Get.put(BrunchController(), permanent: true);
    Get.put(LunchController(), permanent: true);
    Get.put(EndDocumentController());
  }
}
