import 'dart:developer';
import 'dart:io';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/lunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/5_afternoon_snack/afternoon_snack_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/6_after_training/after_training_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/7_dinnner/dinner_controller.dart';
import 'package:diet_pdf_creator/app/modules/pdf_screen/pdf_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pdf/widgets.dart' as pdfLib;
import 'package:path_provider/path_provider.dart';

class EndDocumentController extends GetxController {
  final getBreakfast = Get.find<BreakfastController>();
  var breakfast = <List<Meal>>[];

  final getBrunch = Get.find<BrunchController>();
  var brunch = <List<Meal>>[];

  final getLunch = Get.find<LunchController>();
  var lunch = <List<Meal>>[];

  final getAfternoonSnack = Get.find<AfternoonSnackController>();
  var afternoonSnack = <List<Meal>>[];

  final getAfterTraining = Get.find<AfterTrainingController>();
  var afterTraininng = <List<Meal>>[];

  final getDinner = Get.find<DinnerController>();
  var dinner = <List<Meal>>[];

  @override
  void onInit() {
    breakfast = getBreakfast.breakfast;

    brunch = getBrunch.brunch;

    lunch = getLunch.lunch;

    afternoonSnack = getAfternoonSnack.afternoonSnack;

    afterTraininng = getAfterTraining.afterTraining;

    dinner = getDinner.dinner;

    log('$breakfast');

    log('$brunch');

    log('$lunch');

    log('$afternoonSnack');

    log('$afterTraininng');

    log('$dinner');

    super.onInit();
  }

  Future<void> generatePdf() async {
    final pdfLib.Document pdf = pdfLib.Document(deflate: zlib.encode);

    pdf.addPage(pdfLib.MultiPage(
      build: (context) => [
        pdfLib.Text('Desjejum: '),
        pdfLib.Column(
          children: breakfast.asMap().entries.map(
            (entry) {
              int index = entry.key;

              return pdfLib.Padding(
                padding: const pdfLib.EdgeInsets.all(8),
                child: pdfLib.Row(
                  children: breakfast[index]
                      .map((element) => pdfLib.Container(
                            padding: const pdfLib.EdgeInsets.all(8),
                            decoration: pdfLib.BoxDecoration(
                              border: pdfLib.Border.all(width: 1),
                              borderRadius: pdfLib.BorderRadius.circular(12),
                            ),
                            child: pdfLib.Row(
                              children: [
                                pdfLib.Text('${element.option}'),
                                pdfLib.SizedBox(width: 10),
                                pdfLib.Text('${element.amount}'),
                                pdfLib.SizedBox(width: 10),
                                pdfLib.Text('${element.grammage}'),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              );
            },
          ).toList(),
        ),
        pdfLib.Text('Colação: '),
        pdfLib.Column(
          children: brunch.asMap().entries.map(
            (entry) {
              int index = entry.key;

              return pdfLib.Padding(
                padding: const pdfLib.EdgeInsets.all(8),
                child: pdfLib.Row(
                  children: brunch[index]
                      .map((element) => pdfLib.Container(
                            padding: const pdfLib.EdgeInsets.all(8),
                            decoration: pdfLib.BoxDecoration(
                              border: pdfLib.Border.all(width: 1),
                              borderRadius: pdfLib.BorderRadius.circular(12),
                            ),
                            child: pdfLib.Row(
                              children: [
                                pdfLib.Text('${element.option}'),
                                pdfLib.SizedBox(width: 10),
                                pdfLib.Text('${element.amount}'),
                                pdfLib.SizedBox(width: 10),
                                pdfLib.Text('${element.grammage}'),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              );
            },
          ).toList(),
        ),
        pdfLib.Text('Almoço: '),
        pdfLib.Column(
          children: lunch.asMap().entries.map(
            (entry) {
              int index = entry.key;

              return pdfLib.Padding(
                padding: const pdfLib.EdgeInsets.all(8),
                child: pdfLib.Row(
                  children: lunch[index]
                      .map((element) => pdfLib.Container(
                            padding: const pdfLib.EdgeInsets.all(8),
                            decoration: pdfLib.BoxDecoration(
                              border: pdfLib.Border.all(width: 1),
                              borderRadius: pdfLib.BorderRadius.circular(12),
                            ),
                            child: pdfLib.Row(
                              children: [
                                pdfLib.Text('${element.option}'),
                                pdfLib.SizedBox(width: 10),
                                pdfLib.Text('${element.amount}'),
                                pdfLib.SizedBox(width: 10),
                                pdfLib.Text('${element.grammage}'),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              );
            },
          ).toList(),
        ),
        pdfLib.Text('Lanche da tarde: '),
        pdfLib.Column(
          children: afternoonSnack.asMap().entries.map(
            (entry) {
              int index = entry.key;

              return pdfLib.Padding(
                padding: const pdfLib.EdgeInsets.all(8),
                child: pdfLib.Row(
                  children: afternoonSnack[index]
                      .map((element) => pdfLib.Container(
                            padding: const pdfLib.EdgeInsets.all(8),
                            decoration: pdfLib.BoxDecoration(
                              border: pdfLib.Border.all(width: 1),
                              borderRadius: pdfLib.BorderRadius.circular(12),
                            ),
                            child: pdfLib.Row(
                              children: [
                                pdfLib.Text('${element.option}'),
                                pdfLib.SizedBox(width: 10),
                                pdfLib.Text('${element.amount}'),
                                pdfLib.SizedBox(width: 10),
                                pdfLib.Text('${element.grammage}'),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              );
            },
          ).toList(),
        ),
        pdfLib.Text('Pós treino: '),
        pdfLib.Column(
          children: afterTraininng.asMap().entries.map(
            (entry) {
              int index = entry.key;

              return pdfLib.Padding(
                padding: const pdfLib.EdgeInsets.all(8),
                child: pdfLib.Row(
                  children: afterTraininng[index]
                      .map((element) => pdfLib.Container(
                            padding: const pdfLib.EdgeInsets.all(8),
                            decoration: pdfLib.BoxDecoration(
                              border: pdfLib.Border.all(width: 1),
                              borderRadius: pdfLib.BorderRadius.circular(12),
                            ),
                            child: pdfLib.Row(
                              children: [
                                pdfLib.Text('${element.option}'),
                                pdfLib.SizedBox(width: 10),
                                pdfLib.Text('${element.amount}'),
                                pdfLib.SizedBox(width: 10),
                                pdfLib.Text('${element.grammage}'),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              );
            },
          ).toList(),
        ),
        pdfLib.Text('Jantar: '),
        pdfLib.Column(
          children: dinner.asMap().entries.map(
            (entry) {
              int index = entry.key;

              return pdfLib.Padding(
                padding: const pdfLib.EdgeInsets.all(8),
                child: pdfLib.Row(
                  children: dinner[index]
                      .map((element) => pdfLib.Container(
                            padding: const pdfLib.EdgeInsets.all(8),
                            decoration: pdfLib.BoxDecoration(
                              border: pdfLib.Border.all(width: 1),
                              borderRadius: pdfLib.BorderRadius.circular(12),
                            ),
                            child: pdfLib.Row(
                              children: [
                                pdfLib.Text('${element.option}'),
                                pdfLib.SizedBox(width: 10),
                                pdfLib.Text('${element.amount}'),
                                pdfLib.SizedBox(width: 10),
                                pdfLib.Text('${element.grammage}'),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              );
            },
          ).toList(),
        ),
      ],
    ));

    final String dir = (await getApplicationDocumentsDirectory()).path;

    final String path = '$dir/pdfExemplo.pdf';

    final File file = File(path);
    file.writeAsBytesSync(List.from(await pdf.save()));

    Get.to(PdfScreen(pathPdf: path));
  }
}
