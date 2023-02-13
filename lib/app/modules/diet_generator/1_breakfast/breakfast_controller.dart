import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/models/option_meal.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:get/get.dart';

class BreakfastController extends GetxController {
  Map listMeal = <String, Meal>{};

  var listBreakfast = <OptionMeal>[].obs;

  void addMealBreakfast() async {
    log('Passou aqui');
    listMeal = await Get.toNamed(RoutesApplication.mealBreakfast);

    listMeal.forEach((key, value) => listBreakfast.add(
          OptionMeal(id: key, meal: value),
        ));

    log('${listBreakfast.length}');

    log('$listMeal');
  }
}
