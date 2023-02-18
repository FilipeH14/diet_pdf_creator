import 'package:flutter/material.dart';

class DietUiColors {

  static DietUiColors? _instance;

  DietUiColors._();

  static DietUiColors get i {
    _instance ??= DietUiColors._();
    return _instance!;
  }

  Color get primary => const Color(0XFF453C5C);  
  Color get secondary => const Color(0XFF51647A);  
  Color get rightGreen => const Color(0XFF31ADA1);  
  Color get midiumGreen => const Color(0XFF59d999);  
  Color get lightGreen => const Color(0XFFBEED80);
}

extension DietUiColorsExtensions on BuildContext {
  DietUiColors get colors => DietUiColors.i;
}
