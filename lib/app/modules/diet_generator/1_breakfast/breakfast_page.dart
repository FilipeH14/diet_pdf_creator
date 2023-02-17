import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreakfastPage extends GetView<BreakfastController> {
  const BreakfastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('breakfast')),
      body: Obx(() => ListView.builder(
            itemCount: controller.breakfast.length,
            itemBuilder: (context, index) => Row(
              children: controller.breakfast[index]
                  .map((value) => Row(
                        children: [
                          Text('${value.option}'),
                          Text('${value.amount}'),
                          Text('${value.grammage}'),
                        ],
                      ))
                  .toList(),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.addMealBreakfast(),
      ),
    );
  }
}
