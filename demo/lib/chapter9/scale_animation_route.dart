import 'package:flutter/material.dart';

class ScaleAnimationRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScaleAnimationState();
  }
}

class _ScaleAnimationState extends State with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    animation = Tween(begin: 0.0, end: 300.0).animate(animation)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'images/car.jpg',
        width: animation.value,
        height: animation.value,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
