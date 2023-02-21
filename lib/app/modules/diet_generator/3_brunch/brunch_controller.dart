import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/models/option_meal.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:get/get.dart';

class BrunchController extends GetxController {
  Map listMeal = <String, Meal>{};

  var listBrunch = <OptionMeal>[].obs;

  var listOptions = <Meal>[];

  RxList<List<Meal>> brunch = <List<Meal>>[].obs;

  int positionList = 0;

  void addMealBrunch() async {
    listMeal = await Get.toNamed(RoutesApplication.mealBrunch);

    listMeal.forEach((key, value) => listBrunch.add(
          OptionMeal(id: key, meal: value),
        ));

    listMeal.values.forEach((element) {
      listOptions.add(element);
    });

    var listOptionCopy = [...listOptions];

    brunch.insert(positionList, listOptionCopy);

    listOptions.clear();

    positionList++;
  }
}
