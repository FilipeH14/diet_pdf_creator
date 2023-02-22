import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Desjejum:',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Obx(() => ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
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
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Colação:',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Obx(() => ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
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
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Almoço:',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Obx(() => ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.lunch.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: Wrap(
                        children: controller.lunch[index]
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
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Lanche da tarde:',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Obx(() => ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
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
            DietButton(
              text: 'Confirmar',
              // action: () => controller.generatePdf(),
              action: () {},
            ),
          ],
        ),
      ),
    );
  }
}
