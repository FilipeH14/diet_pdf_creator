import 'dart:io';

import 'package:diet_pdf_creator/app/modules/pdf_screen/pdf_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pdf/widgets.dart' as pdfLib;
import 'package:path_provider/path_provider.dart';

class BreakfastController extends GetxController {

  final optionEC = TextEditingController();
  final amountEC = TextEditingController();
  final weightEC = TextEditingController();

  Future<void> sendToPdf(String option, amount, weight) async {
    final pdfLib.Document pdf = pdfLib.Document(deflate: zlib.encode);

    pdf.addPage(pdfLib.MultiPage(
      build: (context) => [
        pdfLib.Table.fromTextArray(data: <List<String>>[
          <String>['option', 'amount', 'weight'],
          [option, amount, weight],
        ]),
      ],
    ));

    final String dir = (await getApplicationDocumentsDirectory()).path;

    final String path = '$dir/pdfExemplo.pdf';

    final File file = File(path);
    file.writeAsBytesSync(List.from(await pdf.save()));

    Get.to(PdfScreen(pathPdf: path));
  }
}
