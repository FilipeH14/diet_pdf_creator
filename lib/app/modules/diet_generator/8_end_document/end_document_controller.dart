import 'dart:io';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/models/personal_data.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/1_personal_data/personal_data_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/lunch_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/5_afternoon_snack/afternoon_snack_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/6_after_training/after_training_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/7_dinnner/dinner_controller.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/8_end_document/widgets/pdf_components.dart';
import 'package:diet_pdf_creator/app/modules/pdf_screen/pdf_screen.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart';
import 'package:path_provider/path_provider.dart';

class EndDocumentController extends GetxController {
  final getPersonalData = Get.find<PersonalDataController>();
  late PersonalData personalData;

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
    personalData = PersonalData(
      name: getPersonalData.personalData.name,
      date: getPersonalData.personalData.date,
    );

    breakfast = getBreakfast.breakfast;

    brunch = getBrunch.brunch;

    lunch = getLunch.lunch;

    afternoonSnack = getAfternoonSnack.afternoonSnack;

    afterTraininng = getAfterTraining.afterTraining;

    dinner = getDinner.dinner;

    super.onInit();
  }

  Future<void> generatePdf() async {
    final pdf = Document();

    final mplus1 = Font.ttf(
        await rootBundle.load('assets/fonts/mplus1/MPLUS1p-Regular.ttf'));

    pdf.addPage(MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (context) => [
        PdfComponents.headerPdf(
          name: personalData.name,
          date: personalData.date,
        ),
        Text(
          'Desjejum: ',
          style: const TextStyle(fontSize: 30),
        ),
        PdfComponents.listMealPdf(meal: breakfast),
        SizedBox(height: 20),
        Text(
          'Colação: ',
          style: const TextStyle(fontSize: 30),
        ),
        PdfComponents.listMealPdf(meal: brunch),
        SizedBox(height: 20),
        Text(
          'Almoço: ',
          style: const TextStyle(fontSize: 30),
        ),
        PdfComponents.listMealPdf(meal: lunch),
        SizedBox(height: 20),
        Text(
          'Lanche da tarde: ',
          style: const TextStyle(fontSize: 30),
        ),
        PdfComponents.listMealPdf(meal: afternoonSnack),
        SizedBox(height: 20),
        Text(
          'Pós treino: ',
          style: const TextStyle(fontSize: 30),
        ),
        PdfComponents.listMealPdf(meal: afterTraininng),
        SizedBox(height: 20),
        Text(
          'Jantar: ',
          style: const TextStyle(fontSize: 30),
        ),
        PdfComponents.listMealPdf(meal: dinner),
      ],
    ));

    final String dir = (await getApplicationDocumentsDirectory()).path;

    final String path = '$dir/pdfExemplo.pdf';

    final File file = File(path);
    file.writeAsBytesSync(List.from(await pdf.save()));

    Get.to(PdfScreen(pathPdf: path));
  }
}
