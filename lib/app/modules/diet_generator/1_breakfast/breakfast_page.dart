import 'dart:developer';

import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreakfastPage extends GetView<BreakfastController> {
  final _formKey = GlobalKey<FormState>();

  

  BreakfastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('breakfast')),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DietFormField(
                placeholder: 'opção',
                controller: controller.optionEC,
              ),
              DietFormField(
                placeholder: 'quantidade',
                controller: controller.amountEC,
              ),
              DietFormField(
                placeholder: 'peso',
                controller: controller.weightEC,
              ),
              DietButton(
                text: 'gerar pdf',
                action: () {
                  // final option = controller.optionEC.text;
                  // final amount = controller.amountEC.text;
                  // final weight = controller.weightEC.text;

                  // controller.sendToPdf(option, amount, weight);
                  controller.goToNextPage();

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
