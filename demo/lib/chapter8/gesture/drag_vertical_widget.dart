import 'package:flutter/material.dart';

class DragVerticalWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DragVerticalState();
  }
}

class _DragVerticalState extends State {
  double _top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: _top,
          child: GestureDetector(
            child: CircleAvatar(
              child: Text('A'),
            ),
            onVerticalDragUpdate: (DragUpdateDetails e) {
              setState(() {
                _top += e.delta.dy;
              });
            },
          ),
        )
      ],
    );
  }
}
