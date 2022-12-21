import 'package:flutter/material.dart';

import 'package:diet_pdf_creator/app/shared/ui/diet_ui_colors.dart';

class DietUiTheme {
  DietUiTheme._();

  static String get title => 'Diet Pdf Creator';

  static ThemeData get theme => ThemeData(
        fontFamily: 'mplus1',
        scaffoldBackgroundColor: Colors.white,
        colorSchemeSeed: DietUiColors.primary,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: DietUiColors.rightGreen,
          ),
        ),
      );
}
