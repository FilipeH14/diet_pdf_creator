import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/models/option_meal.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:get/get.dart';

class AfterTrainingController extends GetxController {
  Map listMeal = <String, Meal>{};

  var listAfterTraining = <OptionMeal>[].obs;

  var listOptions = <Meal>[];

  RxList<List<Meal>> afterTraining = <List<Meal>>[].obs;

  int positionList = 0;

  void addMealLunch() async {
    listMeal = await Get.toNamed(RoutesApplication.mealAfterTraining);

    listMeal.forEach((key, value) => listAfterTraining.add(
          OptionMeal(id: key, meal: value),
        ));

    listMeal.values.forEach((element) {
      listOptions.add(element);
    });

    var listOptionCopy = [...listOptions];

    afterTraining.insert(positionList, listOptionCopy);

    listOptions.clear();

    positionList++;
  }
}
