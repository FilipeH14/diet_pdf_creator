import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationDiet extends StatelessWidget {
  const AnimationDiet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              child: LottieBuilder.asset('assets/animations/animationDiet.json'),
            ),
            const Text('Montar o Desjejum!!!'),
          ],
        ),
      ),
    );
  }
}
