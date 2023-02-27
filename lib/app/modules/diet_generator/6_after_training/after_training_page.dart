import 'package:diet_pdf_creator/app/modules/diet_generator/6_after_training/after_training_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/widgets/step_diet.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_app_bar.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AfterTrainingPage extends GetView<AfterTrainingController> {
  const AfterTrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DietAppBar(dietTitle: 'Pós treino'),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: StepDiet(currentStep: 6, amountStep: 7),
          ),
          Expanded(
            flex: 8,
            child: Obx(
              () => Visibility(
                visible: controller.afterTraining.isNotEmpty,
                replacement: const Center(
                  child: Text('Montar a Colação'),
                ),
                child: Obx(() => ListView.separated(
                      itemCount: controller.afterTraining.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8),
                        child: Wrap(
                          children: controller.afterTraining[index]
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
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: DietButton(
                text: 'Ir para o jantar',
                isEnable: controller.afterTraining.isNotEmpty,
                action: () => controller.afterTraining.isEmpty
                    ? null
                    : Get.toNamed(RoutesApplication.brunch),
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
