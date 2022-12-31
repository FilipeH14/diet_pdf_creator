import 'dart:io';

import 'package:diet_pdf_creator/app/modules/pdf_screen/pdf_screen.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pdf/widgets.dart' as pdfLib;
import 'package:path_provider/path_provider.dart';

class BreakfastController extends GetxController {
  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final weightEC = TextEditingController();

  RxString optionText = ''.obs;
  RxString amountText = ''.obs;
  RxString weightText = ''.obs;

  RxMap<dynamic, dynamic> dietTest = {}.obs;

  @override
  void onInit() {
    optionText.value = optionEC.text;
    amountText.value = amountEC.text;
    weightText.value = weightEC.text;

    super.onInit();
  }

  void goToNextPage() {
    dietTest = {
      'option': optionText.value,
      'amount': amountText.value,
      'weight': weightText.value,
    } as RxMap<String, String>;

    Get.toNamed(RoutesApplication.endDocument);
  }

  // Future<void> sendToPdf(option, amount, weight) async {
  //   final pdfLib.Document pdf = pdfLib.Document(deflate: zlib.encode);

  //   pdf.addPage(pdfLib.MultiPage(
  //     build: (context) => [
  //       pdfLib.Table.fromTextArray(data: <List<String>>[
  //         <String>['option', 'amount', 'weight'],
  //         [option, amount, weight],
  //       ]),
  //     ],
  //   ));

  //   final String dir = (await getApplicationDocumentsDirectory()).path;

  //   final String path = '$dir/pdfExemplo.pdf';

  //   final File file = File(path);
  //   file.writeAsBytesSync(List.from(await pdf.save()));

  //   Get.to(PdfScreen(pathPdf: path));
  // }
}
