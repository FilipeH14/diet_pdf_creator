import 'package:flutter/material.dart';

import 'package:diet_pdf_creator/app/shared/ui/diet_ui_colors.dart';

class DietUiTheme {
  DietUiTheme._();

  static String get title => 'Diet Pdf Creator';

  static ThemeData get theme => ThemeData(
        fontFamily: 'mplus1',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: DietUiColors.i.primary,
        colorScheme: ColorScheme.fromSeed(
          seedColor: DietUiColors.i.primary,
          primary: DietUiColors.i.primary,
          secondary: DietUiColors.i.secondary,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: DietUiColors.i.rightGreen,
          ),
        ),
      );
}
