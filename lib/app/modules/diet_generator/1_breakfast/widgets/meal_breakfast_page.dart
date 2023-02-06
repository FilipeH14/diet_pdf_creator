import 'dart:developer';

import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';

class MealBreakfastPage extends GetView<BreakfastController> {
  const MealBreakfastPage({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                const Text('Opções para desjejum'),
                const SizedBox(height: 20),
                Obx(
                  () => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(children: controller.myListForm),
                  ),
                ),
                // DietFormField(
                //   placeholder: 'opção',
                //   controller: TextEditingController(),
                // ),
                // const SizedBox(height: 10),
                // DietFormField(
                //   placeholder: 'quantidade',
                //   controller: TextEditingController(),
                // ),
                // const SizedBox(height: 10),
                // DietFormField(
                //   placeholder: 'peso',
                //   controller: TextEditingController(),
                // ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        spacing: 12,
        spaceBetweenChildren: 10,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.add),
            onTap: () {
              log('passou aqui!!!!');
              controller.myListForm.add(
                Column(
                  children: [
                    TextFormField(
                      onSaved: (newValue) =>
                          controller.breakfastValues.addEntries(
                        {'${controller.breakfastValues.length}': newValue}
                            .entries,
                      ),
                      decoration: const InputDecoration(
                        labelText: 'opção',
                        border: OutlineInputBorder(),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      onSaved: (newValue) =>
                          controller.breakfastValues.addEntries(
                        {'${controller.breakfastValues.length}': newValue}
                            .entries,
                      ),
                      decoration: const InputDecoration(
                        labelText: 'quantidade',
                        border: OutlineInputBorder(),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      onSaved: (newValue) =>
                          controller.breakfastValues.addEntries(
                        {'${controller.breakfastValues.length}': newValue}
                            .entries,
                      ),
                      decoration: const InputDecoration(
                        labelText: 'peso',
                        border: OutlineInputBorder(),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.save_alt_outlined),
          ),
        ],
      ),
    );
  }
}
