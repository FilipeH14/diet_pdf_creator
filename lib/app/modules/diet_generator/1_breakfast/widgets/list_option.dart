import 'package:flutter/material.dart';

class ListOption extends StatelessWidget {
  const ListOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => Container(),
      ),
    );
  }
}
