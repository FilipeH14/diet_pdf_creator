import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/models/option_meal.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:get/get.dart';

class LunchController extends GetxController {
  Map listMeal = <String, Meal>{};

  var listLunch = <OptionMeal>[].obs;

  var listOptions = <Meal>[];

  RxList<List<Meal>> lunch = <List<Meal>>[].obs;

  int positionList = 0;

  void addMealLunch() async {
    listMeal = await Get.toNamed(RoutesApplication.mealLunch);

    listMeal.forEach((key, value) => listLunch.add(
          OptionMeal(id: key, meal: value),
        ));

    listMeal.values.forEach((element) {
      listOptions.add(element);
    });

    var listOptionCopy = [...listOptions];

    lunch.insert(positionList, listOptionCopy);

    listOptions.clear();

    positionList++;
  }
}
