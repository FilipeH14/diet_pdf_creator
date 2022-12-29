import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreakfastPage extends GetView<BreakfastController> {
  const BreakfastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('breakfast')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DietFormField(placeholder: 'opção'),
            const DietFormField(placeholder: 'quantidade'),
            const DietFormField(placeholder: 'peso'),
            DietButton(
              text: 'gerar pdf',
              action: () {},
            ),
          ],
        ),
      ),
    );
  }
}
