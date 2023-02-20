import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/breakfast_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/widgets/meal_breakfast/meal_breakfast_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/2_breakfast/widgets/meal_breakfast/meal_breakfast_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/lunch_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/4_lunch/lunch_page.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/end_document/end_document_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/end_document/end_document_page.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutersDietGenerator {
  RoutersDietGenerator._();

  static final routers = <GetPage>[
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
      page: () => BrunchPage(),
    ),
    GetPage(
      name: RoutesApplication.lunch,
      binding: LunchBinding(),
      page: () => LunchPage(),
    ),
    GetPage(
      name: RoutesApplication.endDocument,
      binding: EndDocumentBinding(),
      page: () => const EndDocumentPage(),
    ),
  ];
}
