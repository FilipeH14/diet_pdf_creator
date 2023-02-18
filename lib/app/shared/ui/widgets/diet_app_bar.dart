import 'package:flutter/material.dart';

class DietAppBar extends AppBar {
  final String dietTitle;

  DietAppBar({
    required this.dietTitle,
    super.key,
    double elevation = 1,
  }) : super(
          elevation: elevation,
          title: Text(
            dietTitle,
            style: const TextStyle(color: Colors.black),
          ),
        );
}
