import 'package:diet_pdf_creator/app/modules/diet_generator/2_brunch/brunch_controller.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrunchPage extends GetView<BrunchController> {
  final _formKey = GlobalKey<FormState>();

  BrunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('brunch page')),
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
                controller: controller.grammageEC,
              ),
              DietButton(
                text: 'gerar pdf',
                action: () => controller.goToNextPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
