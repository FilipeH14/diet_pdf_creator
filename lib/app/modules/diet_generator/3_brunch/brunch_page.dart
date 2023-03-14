import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/widgets/animation_diet.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/widgets/step_diet.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_app_bar.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrunchPage extends GetView<BrunchController> {
  const BrunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DietAppBar(dietTitle: 'Colação'),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: StepDiet(currentStep: 3, amountStep: 7),
          ),
          Obx(
            () => Visibility(
              visible: controller.brunch.isNotEmpty,
              replacement: const AnimationDiet(title: 'Montar a colação!!!'),
              child: Obx(() => Expanded(
                    flex: 8,
                    child: ListView.separated(
                      itemCount: controller.brunch.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8),
                        child: Wrap(
                          children: controller.brunch[index]
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
                    ),
                  )),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Obx(() => DietButton(
                    text: 'Ir para o Almoço',
                    isEnable: controller.brunch.isNotEmpty,
                    action: () => controller.brunch.isEmpty
                        ? null
                        : Get.toNamed(RoutesApplication.lunch),
                  )),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.addMealBrunch(),
      ),
    );
  }
}
