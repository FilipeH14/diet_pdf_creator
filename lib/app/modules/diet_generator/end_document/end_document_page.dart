import 'dart:developer';

import 'package:diet_pdf_creator/app/modules/diet_generator/end_document/end_document_controller.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EndDocumentPage extends GetView<EndDocumentController> {
  const EndDocumentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EndDocumentPage')),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(
                        'Desjejum:',
                        style: TextStyle(
                          color: Colors.amber[900],
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(controller.breakfastDiet.option.toString()),
                      const SizedBox(height: 2),
                      Text(controller.breakfastDiet.amount.toString()),
                      const SizedBox(height: 2),
                      Text(controller.breakfastDiet.grammage.toString()),
                      const SizedBox(height: 2),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(
                        'Desjejum:',
                        style: TextStyle(
                          color: Colors.amber[900],
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(controller.brunchDiet.option.toString()),
                      const SizedBox(height: 2),
                      Text(controller.brunchDiet.amount.toString()),
                      const SizedBox(height: 2),
                      Text(controller.brunchDiet.grammage.toString()),
                      const SizedBox(height: 2),
                    ],
                  ),
                ),
              ),
            ),
            DietButton(
              text: 'Confirmar',
              action: () => controller.generatePdf(
                controller.breakfastDiet,
                controller.brunchDiet,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
