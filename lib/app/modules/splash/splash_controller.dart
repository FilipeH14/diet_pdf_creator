import 'dart:developer';

import 'package:diet_pdf_creator/app/routes/routes_name.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    5.delay();
    Get.offAllNamed(RoutesName.signInRoute);
    log('passamo aqui');
    super.onReady();
  }
}
