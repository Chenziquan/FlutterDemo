import 'package:flutter/material.dart';

class StackRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Container(
            child: Text(
              'Hello world!',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
          ),
          Positioned(
            left: 18.0,
            child: Text("Jesse Chen"),
          ),
          Positioned(
            top: 18.0,
            child: Text('Your friend'),
          ),
        ],
      ),
    );
  }
}
