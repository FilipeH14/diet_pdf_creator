import 'package:diet_pdf_creator/app/routes/routers_pages.dart';
import 'package:diet_pdf_creator/app/routes/routes_name.dart';
import 'package:diet_pdf_creator/app/shared/bindings/global_bindings.dart';
import 'package:diet_pdf_creator/app/shared/ui/diet_ui_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DietApp extends StatelessWidget {
  const DietApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: DietUiTheme.title,
      debugShowCheckedModeBanner: false,
      initialBinding: GlobalBindings(),
      theme: DietUiTheme.theme,
      initialRoute: RoutesName.splashRoute,
      getPages: RoutersPages.routers,
    );
  }
}
