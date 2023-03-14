import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/widgets/animation_diet.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/widgets/step_diet.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_app_bar.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreakfastPage extends GetView<BreakfastController> {
  const BreakfastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DietAppBar(dietTitle: 'Desjejum'),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: StepDiet(currentStep: 2, amountStep: 7),
          ),
          Obx(
            () => Visibility(
              visible: controller.breakfast.isNotEmpty,
              replacement: const AnimationDiet(title: 'Montar o Desjejum!!!'),
              child: Obx(() => Expanded(
                    flex: 8,
                    child: ListView.separated(
                      itemCount: controller.breakfast.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8),
                        child: Wrap(
                          children: controller.breakfast[index]
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
                    text: 'Ir para colação',
                    isEnable: controller.breakfast.isNotEmpty,
                    action: () => controller.breakfast.isEmpty
                        ? null
                        : Get.toNamed(RoutesApplication.brunch),
                  )),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.addMealBreakfast(),
      ),
    );
  }
}
