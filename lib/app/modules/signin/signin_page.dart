import 'package:diet_pdf_creator/app/modules/signin/signin_controller.dart';
import 'package:diet_pdf_creator/app/shared/ui/diet_ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SigninPage extends GetView<SigninController> {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DietUiColors.secondary,
      body: Center(
        child: SizedBox(
          height: 50,
          child: SignInButton(
            Buttons.Google,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            text: 'Entrar com o google',
            onPressed: () => controller.login(),
          ),
        ),
      ),
    );
  }
}
