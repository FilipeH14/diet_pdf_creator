import 'package:diet_pdf_creator/app/shared/ui/diet_ui_colors.dart';
import 'package:flutter/material.dart';

class StepDiet extends StatelessWidget {
  final int currentStep;
  final int amountStep;

  const StepDiet({
    required this.currentStep,
    required this.amountStep,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var steps = <Widget>[];

    for (int i = 0; i < amountStep; i++) {
      if (i < currentStep - 1) {
        steps.add(
          CircleAvatar(
            backgroundColor: DietUiColors.i.midiumGreen,
            radius: 10,
            child: const Icon(
              Icons.check_outlined,
              color: Colors.white,
              size: 18,
            ),
          ),
        );
      } else if (i == currentStep - 1) {
        steps.add(
          CircleAvatar(
            backgroundColor: DietUiColors.i.midiumGreen,
            radius: 10,
          ),
        );
      } else {
        steps.add(
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
        );
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: steps,
      ),
    );
  }
}
