import 'package:diet_pdf_creator/app/modules/home/home_binding.dart';
import 'package:diet_pdf_creator/app/modules/home/home_page.dart';
import 'package:diet_pdf_creator/app/modules/signin/signin_binding.dart';
import 'package:diet_pdf_creator/app/modules/signin/signin_page.dart';
import 'package:diet_pdf_creator/app/modules/splash/splash_binding.dart';
import 'package:diet_pdf_creator/app/modules/splash/splash_page.dart';
import 'package:diet_pdf_creator/app/routes/routes_name.dart';

import 'package:get/get.dart';


class RoutersPages {
  RoutersPages._();

  static final routers = <GetPage>[
    GetPage(
      name: RoutesName.splashRoute,
      binding: SplashBinding(),
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RoutesName.signInRoute,
      binding: SigninBinding(),
      page: () => const SigninPage(),
    ),
    GetPage(
      name: RoutesName.homeRoute,
      binding: HomeBinding(),
      page: () => const HomePage(),
    ),
  ];
}
