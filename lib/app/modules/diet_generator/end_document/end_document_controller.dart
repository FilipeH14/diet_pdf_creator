import 'dart:developer';
import 'dart:io';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/lunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/5_afternoon_snack/afternoon_snack_controller.dart';
import 'package:diet_pdf_creator/app/modules/pdf_screen/pdf_screen.dart';
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

  @override
  void onInit() {
    breakfast = getBreakfast.breakfast;

    brunch = getBrunch.brunch;

    lunch = getLunch.lunch;

    afternoonSnack = getAfternoonSnack.afternoonSnack;

    log('$breakfast');

    log('$brunch');

    log('$lunch');

    super.onInit();
  }

  Future<void> generatePdf(breakfastDiet, brunchDiet, lunchDiet) async {
    final pdfLib.Document pdf = pdfLib.Document(deflate: zlib.encode);

    pdf.addPage(pdfLib.MultiPage(
      build: (context) => [
        pdfLib.Text('Desjejum'),
        pdfLib.Table.fromTextArray(
          data: <List<String>>[
            <String>['option', 'amount', 'grammage'],
            [
              breakfastDiet.option.toString(),
              breakfastDiet.amount.toString(),
              breakfastDiet.grammage.toString(),
            ],
          ],
        ),
        pdfLib.SizedBox(height: 20),
        pdfLib.Text('Colação'),
        pdfLib.Table.fromTextArray(
          data: <List<String>>[
            <String>['option', 'amount', 'grammage'],
            [
              brunchDiet.option.toString(),
              brunchDiet.amount.toString(),
              brunchDiet.grammage.toString(),
            ],
          ],
        ),
        pdfLib.Text('Almoço'),
        pdfLib.Table.fromTextArray(
          data: <List<String>>[
            <String>['option', 'amount', 'grammage'],
            [
              lunchDiet.option.toString(),
              lunchDiet.amount.toString(),
              lunchDiet.grammage.toString(),
            ],
          ],
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
