import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/meal_lunch/meal_lunch_controller.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MealLunchPage extends GetView<MealLunchController> {
  const MealLunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          SizedBox(
            height: 60,
            width: 60,
            child: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ),
              onPressed: () => Get.back(),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                const Text('Opções para desjejum'),
                const SizedBox(height: 20),
                DietFormField(
                  placeholder: 'opção',
                  controller: controller.optionEC,
                ),
                const SizedBox(height: 10),
                DietFormField(
                  placeholder: 'quantidade',
                  controller: controller.amountEC,
                ),
                const SizedBox(height: 10),
                DietFormField(
                  placeholder: 'peso',
                  controller: controller.grammageEC,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: Get.width,
                  child: DietButton(
                    text: 'Concluir',
                    action: () => controller.saveMealLunch(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.insertValues(),
      ),
    );
  }
}