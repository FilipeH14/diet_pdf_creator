import 'dart:math';

import 'package:diet_pdf_creator/app/shared/ui/diet_ui_colors.dart';
import 'package:flutter/material.dart';

class StepDiet extends StatelessWidget {
  const StepDiet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: DietUiColors.i.midiumGreen,
            radius: 10,
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: DietUiColors.i.midiumGreen,
            radius: 10,
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: DietUiColors.i.midiumGreen,
            radius: 10,
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: DietUiColors.i.midiumGreen,
            radius: 10,
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: DietUiColors.i.midiumGreen,
            radius: 10,
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: DietUiColors.i.midiumGreen,
            radius: 10,
            child: const Icon(
              Icons.check_outlined,
              color: Colors.white,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
