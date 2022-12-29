import 'package:flutter/material.dart';

class DietButton extends StatelessWidget {
  final String text;
  final Function()? action;

  const DietButton({
    required this.text,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: () => action,
    );
  }
}
