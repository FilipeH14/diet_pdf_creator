import 'package:diet_pdf_creator/app/modules/diet_generator/1_personal_data/personal_data_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/widgets/step_diet.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_app_bar.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

class PersonalDataPage extends GetView<PersonalDataController> {
  const PersonalDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DietAppBar(dietTitle: 'Infomações pessoais'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const StepDiet(currentStep: 1, amountStep: 7),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    DietFormField(
                      placeholder: 'Nome',
                      controller: controller.nameEC,
                      validator: Validatorless.required('Digite o nome'),
                    ),
                    const SizedBox(height: 10),
                    DietFormField(
                      placeholder: 'Data',
                      controller: controller.dateEc,
                      validator: Validatorless.required('Digite a data atual'),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: DietButton(
                        text: 'Montar dieta',
                        isEnable: true,
                        action: () => controller.goToBreakfast(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
