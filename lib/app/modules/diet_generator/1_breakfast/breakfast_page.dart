import 'dart:developer';

import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/widgets/meal_breakfast_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_brunch/brunch_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_brunch/brunch_page.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreakfastPage extends GetView<BreakfastController> {
  const BreakfastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('breakfast')),
      body: const Center(
        child: Text('PDF Diet Creator'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.to(
            const MealBreakfastPage(),
            duration: const Duration(milliseconds: 1000),
            transition: Transition.downToUp,
            curve: Curves.easeInOutQuad,
          );
        },
      ),
    );
  }
}
