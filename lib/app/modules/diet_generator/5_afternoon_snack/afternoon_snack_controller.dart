import 'package:diet_pdf_creator/app/models/meal.dart';
import 'package:diet_pdf_creator/app/models/option_meal.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:get/get.dart';

class AfternoonSnackController extends GetxController {
  Map listMeal = <String, Meal>{};

  var listAfternoonSnack = <OptionMeal>[].obs;

  var listOptions = <Meal>[];

  RxList<List<Meal>> afternoonSnack = <List<Meal>>[].obs;

  int positionList = 0;

  void addMealAfternoonSnack() async {
    listMeal = await Get.toNamed(RoutesApplication.mealAfternoonSnack);

    listMeal.forEach((key, value) => listAfternoonSnack.add(
          OptionMeal(id: key, meal: value),
        ));

    listMeal.values.forEach((element) {
      listOptions.add(element);
    });

    var listOptionCopy = [...listOptions];

    afternoonSnack.insert(positionList, listOptionCopy);

    listOptions.clear();

    positionList++;
  }
}
