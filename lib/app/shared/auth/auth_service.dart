import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  void init() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Get.offAllNamed(RoutesApplication.signInRoute);
      } else {
        Get.offAllNamed(RoutesApplication.homeRoute);
      }
    });
  }
}
