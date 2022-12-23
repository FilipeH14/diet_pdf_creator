import 'package:diet_pdf_creator/app/routes/routes_name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  void init() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Get.offAllNamed(RoutesName.signInRoute);
      } else {
        Get.offAllNamed(RoutesName.homeRoute);
      }
    });
  }
}
