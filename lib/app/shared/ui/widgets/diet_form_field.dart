import 'package:diet_pdf_creator/app/shared/ui/diet_ui_colors.dart';
import 'package:flutter/material.dart';

class DietFormField extends StatefulWidget {
  final String placeholder;
  final TextEditingController? controller;

  const DietFormField({
    required this.placeholder,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  State<DietFormField> createState() => _DietFormFieldState();
}

class _DietFormFieldState extends State<DietFormField> {
  final FocusNode _focusNode = FocusNode();

  Color _borderColor = Colors.grey;

  @override
  void initState() {
    _focusNode.addListener(() {
      setState(() {
        _borderColor = _focusNode.hasFocus ? DietUiColors.primary : Colors.grey;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: _borderColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        focusNode: _focusNode,
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          isDense: true,
          border: InputBorder.none,
          labelText: widget.placeholder,
          labelStyle: TextStyle(
            height: 0.5,
            color: _borderColor,
          ),
        ),
      ),
    );
  }
}
