import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureRecognizerRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GestureRecognizerState();
  }
}

class _GestureRecognizerState extends State {
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _taggle = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(TextSpan(children: [
        TextSpan(text: '你好世界'),
        TextSpan(
            text: '点我变色',
            style: TextStyle(
              fontSize: 30.0,
              color: _taggle ? Colors.blue : Colors.red,
            ),
            recognizer: _tapGestureRecognizer
              ..onTap = () {
                setState(() {
                  _taggle = !_taggle;
                });
              }),
        TextSpan(text: '你好世界'),
      ])),
    );
  }
}
