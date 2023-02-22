import 'package:diet_pdf_creator/app/modules/diet_generator/widgets/step_diet.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_app_bar.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dinner_controller.dart';

class DinnerPage extends GetView<DinnerController> {
  const DinnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DietAppBar(dietTitle: 'Jantar'),
      body: Column(
        children: [
          const StepDiet(currentStep: 7, amountStep: 7),
          Expanded(
            child: Obx(
              () => Visibility(
                visible: controller.dinner.isNotEmpty,
                replacement: const Center(
                  child: Text('Montar jantar!!!'),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Dieta do jantar!!',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Obx(() => ListView.separated(
                              itemCount: controller.dinner.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8),
                                child: Wrap(
                                  children: controller.dinner[index]
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
                        text: 'Finalizar',
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
        onPressed: () => controller.addMealDinner(),
      ),
    );
  }
}
