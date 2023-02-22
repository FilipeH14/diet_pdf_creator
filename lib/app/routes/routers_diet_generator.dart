import 'package:diet_pdf_creator/app/modules/diet_generator/1_personal_data/personal_data_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/1_personal_data/personal_data_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/widgets/meal_breakfast/meal_breakfast_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/widgets/meal_breakfast/meal_breakfast_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/meal_brunch/meal_brunch_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/meal_brunch/meal_brunch_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/lunch_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/lunch_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/meal_lunch/meal_lunch_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/meal_lunch/meal_lunch_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/5_afternoon_snack/afternoon_snack_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/5_afternoon_snack/afternoon_snack_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/5_afternoon_snack/meal_afternoon_snack/meal_afternoon_snack_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/5_afternoon_snack/meal_afternoon_snack/meal_afternoon_snack_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/6_after_training/after_training_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/6_after_training/after_training_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/6_after_training/widgets/meal_after_training/meal_after_training_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/6_after_training/widgets/meal_after_training/meal_after_training_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/end_document/end_document_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/end_document/end_document_page.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutersDietGenerator {
  RoutersDietGenerator._();

  static final routers = <GetPage>[
    GetPage(
      name: RoutesApplication.personalData,
      binding: PersonalDataBinding(),
      page: () => const PersonalDataPage(),
    ),

    GetPage(
      name: RoutesApplication.breakfast,
      binding: BreakfastBinding(),
      page: () => const BreakfastPage(),
    ),
    GetPage(
      name: RoutesApplication.mealBreakfast,
      binding: MealBreakfastBinding(),
      page: () => const MealBreakfastPage(),
      transitionDuration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOutQuad,
      transition: Transition.downToUp,
    ),

    GetPage(
      name: RoutesApplication.brunch,
      binding: BrunchBinding(),
      page: () => const BrunchPage(),
    ),
    GetPage(
      name: RoutesApplication.mealBrunch,
      binding: MealBrunchBinding(),
      page: () => const MealBrunchPage(),
      transitionDuration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOutQuad,
      transition: Transition.downToUp,
    ),
    
    GetPage(
      name: RoutesApplication.lunch,
      binding: LunchBinding(),
      page: () => const LunchPage(),
    ),
    GetPage(
      name: RoutesApplication.mealLunch,
      binding: MealLunchBinding(),
      page: () => const MealLunchPage(),
      transitionDuration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOutQuad,
      transition: Transition.downToUp,
    ),

    GetPage(
      name: RoutesApplication.afternoonSnack,
      binding: AfternoonSnackBinding(),
      page: () => const AfternoonSnackPage(),
    ),
    GetPage(
      name: RoutesApplication.mealAfternoonSnack,
      binding: MealAfternoonSnackBinding(),
      page: () => const MealAfternoonSnackPage(),
      transitionDuration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOutQuad,
      transition: Transition.downToUp,
    ),

    GetPage(
      name: RoutesApplication.afterTraining,
      binding: AfterTrainingBinding(),
      page: () => const AfterTrainingPage(),
    ),
    GetPage(
      name: RoutesApplication.mealAfterTraining,
      binding: MealAfterTrainingBinding(),
      page: () => const MealAfterTrainingPage(),
      transitionDuration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOutQuad,
      transition: Transition.downToUp,
    ),

    GetPage(
      name: RoutesApplication.endDocument,
      binding: EndDocumentBinding(),
      page: () => const EndDocumentPage(),
    ),
  ];
}
