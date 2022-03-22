import 'package:demo/chapter10/2/gradient_button.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeRouteState();
  }
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientButton(
          child: Text("Submit"),
          colors: [Colors.orange, Colors.red],
          height: 50.0,
          onPressed: onTap,
        ),
        GradientButton(
          child: Text("Submit"),
          colors: [Colors.lightGreen, Colors.green[700]],
          height: 50.0,
          onPressed: onTap,
        ),
        GradientButton(
          child: Text("Submit"),
          colors: [Colors.lightBlue[300], Colors.blueAccent],
          height: 50.0,
          onPressed: onTap,
        )
      ],
    );
  }

  onTap() {
    print("button click");
  }
}
