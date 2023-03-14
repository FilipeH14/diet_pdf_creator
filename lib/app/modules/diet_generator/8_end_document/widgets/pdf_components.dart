import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:get/get.dart';

class PdfComponents {
  static String textValue = '';

  static Widget headerPdf({String? name, String? date}) => Container(
        padding: const EdgeInsets.only(bottom: 3 * PdfPageFormat.mm),
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 2, color: PdfColors.green)),
        ),
        child: Column(
          children: [
            SizedBox(width: 0.5 * PdfPageFormat.cm),
            Text(
              'Logo da Dieta aqui',
              style: const TextStyle(fontSize: 20, color: PdfColors.green),
            ),
            SizedBox(width: 0.5 * PdfPageFormat.cm),
            Text(
              '${name ?? 'não encontrado'} - ${date ?? 'não encontrado'}',
              style: const TextStyle(fontSize: 20, color: PdfColors.black),
            ),
          ],
        ),
      );

  static Widget listMealPdf({List<List<Meal>>? meal}) => Container(
        padding: const EdgeInsets.only(bottom: 3 * PdfPageFormat.mm),
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: meal!.asMap().entries.map((entry) {
            int index = entry.key;

            var valuesMeal = '';

            for (var element in meal[index]) {
              valuesMeal =
                  '${element.option}, ${element.amount}, ${element.grammage} ${element == meal[index].first ? '' : 'ou'} ';

              textValue = valuesMeal + textValue;
            }

            var mealDiet = textValue;

            textValue = '';

            return Padding(
              padding: const EdgeInsets.all(8),
              child: Bullet(
                text: mealDiet,
              ),
            );
          }).toList(),
        ),
      );
}
