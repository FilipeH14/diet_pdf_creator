import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_controller.dart';
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
          const StepDiet(currentStep: 2, amountStep: 7),
          Expanded(
            child: Obx(
              () => Visibility(
                visible: controller.breakfast.isNotEmpty,
                replacement: const Center(
                  child: Text('Montar o Desjejum'),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Dieta do desjejum!!',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Obx(() => ListView.separated(
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
                            )),
                      ),
                      DietButton(
                        text: 'Ir para colação',
                        action: () => Get.toNamed(RoutesApplication.brunch),
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
        onPressed: () => controller.addMealBreakfast(),
      ),
    );
  }
}
