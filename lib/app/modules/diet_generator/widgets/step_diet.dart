import 'package:flutter/material.dart';

class StepDiet extends StatelessWidget {
  const StepDiet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Step Diet!!'),
          Text('Step Diet!!'),
          Text('Step Diet!!'),
        ],
      ),
    );
  }
}
