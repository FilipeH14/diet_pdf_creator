import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationDiet extends StatefulWidget {
  final String title;

  const AnimationDiet({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  State<AnimationDiet> createState() => _AnimationDietState();
}

class _AnimationDietState extends State<AnimationDiet>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    _controller.duration = const Duration(milliseconds: 2600);
    _controller.repeat();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              child: LottieBuilder.asset(
                'assets/animations/animationDiet.json',
                controller: _controller,
              ),
            ),
            Text(widget.title),
          ],
        ),
      ),
    );
  }
}
