import 'package:flutter/material.dart';

class DietButton extends StatelessWidget {
  final String text;

  const DietButton({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: () {},
    );
  }
}
