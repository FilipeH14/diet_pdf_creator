import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:get/get.dart';

class PdfComponents {
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

            return Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: Get.width,
                child: Row(
                  children: [
                    Text(
                      '*',
                      style: const TextStyle(fontSize: 40),
                    ),
                    Container(
                      width: Get.width,
                      child: Wrap(
                        children: meal[index]
                            .map((element) => Container(
                                  padding: const EdgeInsets.all(8),
                                  constraints:
                                      const BoxConstraints(maxWidth: 150),
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '${element.option}, ',
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      SizedBox(width: 2),
                                      Text(
                                        '${element.amount}, ',
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      SizedBox(width: 2),
                                      Text(
                                        '${element.grammage}',
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      );
}
