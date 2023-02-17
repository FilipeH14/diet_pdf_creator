import 'dart:developer';

import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/models/option_meal.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:get/get.dart';

class BreakfastController extends GetxController {
  Map listMeal = <String, Meal>{};

  var listBreakfast = <OptionMeal>[].obs;

  var listOptions = <Meal>[];

  RxList<List<Meal>> breakfast = <List<Meal>>[].obs;

  int positionList = 0;

  void addMealBreakfast() async {
    listMeal = await Get.toNamed(RoutesApplication.mealBreakfast);

    listMeal.forEach((key, value) => listBreakfast.add(
          OptionMeal(id: key, meal: value),
        ));

    listMeal.values.forEach((element) {
      listOptions.add(element);
    });

    var listOptionCopy = [...listOptions];

    breakfast.insert(positionList, listOptionCopy);

    log('$breakfast');

    listOptions.clear();

    positionList++;
  }
}
