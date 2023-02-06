import 'dart:io';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_brunch/brunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_lunch/lunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/pdf_screen/pdf_screen.dart';
import 'package:get/get.dart';

import 'package:pdf/widgets.dart' as pdfLib;
import 'package:path_provider/path_provider.dart';

class EndDocumentController extends GetxController {
  final getBreakfast = Get.find<BreakfastController>();
  late final Meal breakfastDiet;

  final getBrunch = Get.find<BrunchController>();
  late final Meal brunchDiet;

  final getLunch = Get.find<LunchController>();
  late final Meal lunchDiet;

  @override
  void onInit() {
    // breakfastDiet = Meal(
    //   option: getBreakfast.breakfastDiet.option,
    //   amount: getBreakfast.breakfastDiet.amount,
    //   grammage: getBreakfast.breakfastDiet.grammage,
    // );

    brunchDiet = Meal(
      option: getBrunch.brunchDiet.option,
      amount: getBrunch.brunchDiet.amount,
      grammage: getBrunch.brunchDiet.grammage,
    );

    lunchDiet = Meal(
      option: getLunch.lunchDiet.option,
      amount: getLunch.lunchDiet.amount,
      grammage: getLunch.lunchDiet.grammage,
    );

    super.onInit();
  }

  Future<void> generatePdf(Meal breakfastDiet, Meal brunchDiet, Meal lunchDiet) async {
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
