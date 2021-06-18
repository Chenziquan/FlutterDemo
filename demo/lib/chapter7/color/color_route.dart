import 'package:demo/chapter7/color/navbar.dart';
import 'package:flutter/material.dart';

class ColorRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NavBar(
          color: Colors.blue,
          title: "标题",
        ),
        NavBar(
          color: Colors.white,
          title: "标题",
        ),
      ],
    );
  }
}
