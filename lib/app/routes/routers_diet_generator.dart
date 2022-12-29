import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_binding.dart';
import 'package:diet_pdf_creator/app/modules/diet_generator/1_breakfast/breakfast_page.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:get/get.dart';


class RoutersDietGenerator {
  RoutersDietGenerator._();

  static final routers = <GetPage>[
    GetPage(
      name: RoutesApplication.breakfast,
      binding: BreakfastBinding(),
      page: () => const BreakfastPage(),
    ),
  ];
}
