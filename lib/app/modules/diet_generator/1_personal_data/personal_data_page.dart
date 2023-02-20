import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/widgets/step_diet.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_app_bar.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalDataPage extends GetView<BreakfastController> {
  const PersonalDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DietAppBar(dietTitle: 'Infomações pessoais'),
      body: Column(
        children: [
          const StepDiet(currentStep: 1, amountStep: 7),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  DietFormField(
                    placeholder: 'Nome',
                    controller: TextEditingController(),
                  ),
                  DietFormField(
                    placeholder: 'Data',
                    controller: TextEditingController(),
                  ),
                  Center(
                    child: DietButton(
                      text: 'Montar dieta',
                      action: () => Get.toNamed(RoutesApplication.breakfast),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
