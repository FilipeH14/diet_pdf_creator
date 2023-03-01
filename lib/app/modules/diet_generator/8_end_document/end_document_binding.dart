import 'package:diet_pdf_creator/app/modules/diet_generator/1_personal_data/personal_data_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/lunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/5_afternoon_snack/afternoon_snack_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/6_after_training/after_training_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/7_dinnner/dinner_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/8_end_document/end_document_controller.dart';
import 'package:get/get.dart';

class EndDocumentBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(PersonalDataController(), permanent: true);
    Get.put(BreakfastController(), permanent: true);
    Get.put(BrunchController(), permanent: true);
    Get.put(LunchController(), permanent: true);
    Get.put(AfternoonSnackController(), permanent: true);
    Get.put(AfterTrainingController(), permanent: true);
    Get.put(DinnerController(), permanent: true);
    Get.put(EndDocumentController(), permanent: true);
  }
}
