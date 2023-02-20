import 'package:diet_pdf_creator/app/modules/diet_generator/1_personal_data/personal_data_controller.dart';
import 'package:get/get.dart';

class PersonalDataBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(PersonalDataController(), permanent: true);
  }
}
