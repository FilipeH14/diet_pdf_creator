import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/lunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/widgets/step_diet.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_app_bar.dart';
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
      appBar: DietAppBar(dietTitle: 'Almoço'),
      body: Column(
        children: [
          const StepDiet(currentStep: 4, amountStep: 7),
          Expanded(
            child: Obx(
              () => Visibility(
                visible: controller.lunch.isNotEmpty,
                replacement: const Center(
                  child: Text('Montar almoço!!!'),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Dieta do almoço!!',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Obx(() => ListView.separated(
                              itemCount: controller.lunch.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8),
                                child: Wrap(
                                  children: controller.lunch[index]
                                      .map((value) => IntrinsicWidth(
                                            child: Card(
                                              child: Row(
                                                children: [
                                                  Text('${value.option}, '),
                                                  Text('${value.amount}, '),
                                                  Text('${value.grammage} '),
                                                ],
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                ),
                              ),
                              separatorBuilder: (context, index) => Divider(
                                color: Colors.grey[400],
                              ),
                            )),
                      ),
                      DietButton(
                        text: 'Ir para pré treino',
                        action: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.addMealLunch(),
      ),
    );
  }
}
