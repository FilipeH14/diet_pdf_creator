import 'package:diet_pdf_creator/app/modules/diet_generator/1_personal_data/personal_data_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/widgets/step_diet.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_app_bar.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalDataPage extends GetView<PersonalDataController> {
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
                    controller: controller.nameEC,
                  ),
                  DietFormField(
                    placeholder: 'Data',
                    controller: controller.dateEc,
                  ),
                  Center(
                    child: DietButton(
                      text: 'Montar dieta',
                      action: () => controller.goToBreakfast(),
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
