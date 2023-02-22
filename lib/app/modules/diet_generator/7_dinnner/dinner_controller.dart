import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/models/option_meal.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:get/get.dart';

class DinnerController extends GetxController {
  Map listMeal = <String, Meal>{};

  var listDinner = <OptionMeal>[].obs;

  var listOptions = <Meal>[];

  RxList<List<Meal>> dinner = <List<Meal>>[].obs;

  int positionList = 0;

  void addMealDinner() async {
    listMeal = await Get.toNamed(RoutesApplication.mealLunch);

    listMeal.forEach((key, value) => listDinner.add(
          OptionMeal(id: key, meal: value),
        ));

    listMeal.values.forEach((element) {
      listOptions.add(element);
    });

    var listOptionCopy = [...listOptions];

    dinner.insert(positionList, listOptionCopy);

    listOptions.clear();

    positionList++;
  }
}
