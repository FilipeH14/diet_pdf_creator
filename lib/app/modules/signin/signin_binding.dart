import 'package:diet_pdf_creator/app/modules/signin/signin_contorller.dart';
import 'package:get/get.dart';

class SigninBinding implements Bindings {

  @override
  void dependencies() {
    Get.put(SigninContorller());
  }
  
}
