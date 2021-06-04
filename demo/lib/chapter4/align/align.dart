import 'package:flutter/material.dart';

class AlignRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: Align(
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
        Align(
          widthFactor: 2,
          heightFactor: 2,
          alignment: Alignment.topRight,
          child: FlutterLogo(
            size: 60,
          ),
        ),
        Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: Align(
            alignment: FractionalOffset(0.2, 0.6),
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ],
    );
  }
}
