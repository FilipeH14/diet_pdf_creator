import 'package:diet_pdf_creator/app/modules/diet_generator/5_afternoon_snack/afternoon_snack_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/widgets/step_diet.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_app_bar.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AfternoonSnackPage extends GetView<AfternoonSnackController> {
  const AfternoonSnackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DietAppBar(dietTitle: 'Lanche da tarde'),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: StepDiet(currentStep: 5, amountStep: 7),
          ),
          Expanded(
            flex: 8,
            child: Obx(
              () => Visibility(
                visible: controller.afternoonSnack.isNotEmpty,
                replacement: const Center(
                  child: Text('Montar o lanche da tarde'),
                ),
                child: Obx(() => ListView.separated(
                      itemCount: controller.afternoonSnack.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8),
                        child: Wrap(
                          children: controller.afternoonSnack[index]
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
              child: Obx(() => DietButton(
                    text: 'Ir para o pós treino',
                    isEnable: controller.afternoonSnack.isNotEmpty,
                    action: () => controller.afternoonSnack.isEmpty
                        ? null
                        : Get.toNamed(RoutesApplication.afterTraining),
                  )),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.addMealAfternoonSnack(),
      ),
    );
  }
}
