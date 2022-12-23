import 'dart:developer';

import 'package:diet_pdf_creator/app/services/login/login_service.dart';
import 'package:diet_pdf_creator/app/shared/ui/loader/loader_mixin.dart';
import 'package:diet_pdf_creator/app/shared/ui/toast/toast_mixin.dart';
import 'package:get/get.dart';

class SigninController extends GetxController with LoaderMixin, ToastMixin {
  final isLoading = false.obs;
  final message = Rxn<ToastModel>();

  final LoginService _loginService;

  SigninController({required LoginService loginService})
      : _loginService = loginService;

  @override
  void onInit() {
    waitLoading(isLoading);
    messageListener(message);
    super.onInit();
  }

  Future<void> login() async {
    try {
      isLoading(true);
      await _loginService.login();
      isLoading(false);
      message(
        ToastModel.info(
          title: 'sucesso',
          message: 'Login efetuado com sucesso',
        ),
      );
    } catch (e, s) {
      log('$e');
      log('$s');
      isLoading(false);
      message(
        ToastModel.error(
          title: 'erro',
          message: 'Erro ao efetuar login',
        ),
      );
    }
  }
}
