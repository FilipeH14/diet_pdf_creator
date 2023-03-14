import 'package:diet_pdf_creator/app/models/personal_data.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:diet_pdf_creator/app/shared/ui/diet_ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalDataController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final DietUiUtils dietUtils = DietUiUtils();

  final nameEC = TextEditingController();
  final dateEc = TextEditingController();

  late PersonalData personalData;

  @override
  void onClose() {
    nameEC.dispose();
    dateEc.dispose();
    super.onClose();
  }

  void goToBreakfast() {
    final valid = formKey.currentState?.validate() ?? false;

    personalData = PersonalData(
      name: nameEC.text,
      date: dietUtils.formatDateTime(DateTime.now()),
    );

    if (valid) {
      FocusManager.instance.primaryFocus?.unfocus();
      Get.toNamed(RoutesApplication.breakfast);
    }
  }
}
