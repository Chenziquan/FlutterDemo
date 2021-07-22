import 'package:flutter/material.dart';

class ScaleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScaleWidgetRoute();
  }
}

class _ScaleWidgetRoute extends State {
  double _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Image.asset(
          'images/car.jpg',
          width: _width,
        ),
        onScaleUpdate: (ScaleUpdateDetails d) {
          setState(() {
            _width = 200 * d.scale.clamp(.8, 10.0);
          });
        },
      ),
    );
  }
}
