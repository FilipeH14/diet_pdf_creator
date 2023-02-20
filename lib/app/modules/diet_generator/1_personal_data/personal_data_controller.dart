import 'package:diet_pdf_creator/app/models/personal_data.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalDataController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final nameEC = TextEditingController();
  final dateEc = TextEditingController();

  late PersonalData personalData;

  void goToBreakfast() {
    personalData = PersonalData(
      name: nameEC.text,
      date: dateEc.text,
    );

    Get.toNamed(RoutesApplication.breakfast);
  }
}
