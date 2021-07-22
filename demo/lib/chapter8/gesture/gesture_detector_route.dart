import 'package:demo/chapter8/gesture/drag_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureDetectorRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GestureDetectorRouteState();
  }
}

class _GestureDetectorRouteState extends State {
  String _operation = 'No Gesture detected!';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              width: 200.0,
              height: 100.0,
              child: Text(
                _operation,
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () => updateText('onTap'),
            onDoubleTap: () => updateText('onDoubleTap'),
            onLongPress: () => updateText('onLongPress'),
          ),
        ],
      ),
    );
  }

  void updateText(String msg) {
    setState(() {
      _operation = msg;
    });
  }
}
