import 'package:diet_pdf_creator/app/services/login/login_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final LoginService _loginService;
  final FirebaseAuth _firebaseAuth;

  AuthController(
      {required LoginService loginService, required FirebaseAuth firebaseAuth})
      : _loginService = loginService,
        _firebaseAuth = firebaseAuth;

  Future<void> logout() => _loginService.logout();

  User? get user => _firebaseAuth.currentUser;

  void loadListener() {
    _firebaseAuth.userChanges();
  }
}
