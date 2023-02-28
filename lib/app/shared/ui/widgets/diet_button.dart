import 'package:diet_pdf_creator/app/shared/ui/diet_ui_colors.dart';
import 'package:flutter/material.dart';

class DietButton extends StatelessWidget {
  final String text;
  final bool isEnable;
  final Function()? action;

  const DietButton({
    required this.text,
    required this.isEnable,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor:
            isEnable ? DietUiColors.i.rightGreen : Colors.grey[400],
      ),
      child: Text(text),
    );
  }
}
