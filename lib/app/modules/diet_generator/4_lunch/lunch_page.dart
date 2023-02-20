import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/lunch_controller.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LunchPage extends GetView<LunchController> {
  final _formKey = GlobalKey<FormState>();

  LunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lunch page')),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
        ),
      ),
    );
  }
}
