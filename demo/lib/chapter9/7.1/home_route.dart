import 'package:demo/chapter9/7.1/animated_decorated_box.dart';
import 'package:demo/chapter9/7.1/animated_decorated_box1.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatefulWidget {
  Color _decorationColor = Colors.blue;
  @override
  State<StatefulWidget> createState() {
    return _HomeRouteState();
  }
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {

    var duration = Duration(seconds: 1);
    return Column(
      children: [

        AnimatedDecoratedBox1(
          duration: duration,
          decoration: BoxDecoration(color: widget._decorationColor),
          child: TextButton(
            onPressed: () {
              setState(() {
                widget._decorationColor = Colors.red;
              });
            },
            child: Text(
              "AnimatedDecoratedBox",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
