import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 60.0),
          color: Colors.black,
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.skewY(0.3),
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.deepOrange,
              child: Text('Jesse Chen'),
            ),
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          child: Transform.translate(
            offset: Offset(-20.0, -5.0),
            child: Text('Hello world'),
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          child: Transform.rotate(
            angle: math.pi / 2,
            child: Text('Jesse Chen'),
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          child: Transform.scale(
            scale: 1.5,
            child: Text('Jesse Chen'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.scale(
                scale: 1.5,
                child: Text('JesseChen'),
              ),
            ),
            Text(
              'data',
              style: TextStyle(color: Colors.green, fontSize: 18.0),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: RotatedBox(
                quarterTurns: 1,
                child: Text('Jesse Chen'),
              ),
            ),
            Text(
              'data',
              style: TextStyle(color: Colors.green, fontSize: 18.0),
            ),
          ],
        ),
      ],
    );
  }
}
