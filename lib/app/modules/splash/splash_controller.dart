import 'package:diet_pdf_creator/app/routes/routes_name.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Get.offAllNamed(RoutesName.signInRoute);
    super.onReady();
  }
}
