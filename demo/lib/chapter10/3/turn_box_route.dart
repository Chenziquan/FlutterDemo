import 'package:demo/chapter10/3/turn_box.dart';
import 'package:flutter/material.dart';

class TurnBoxRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TurnBoxRouteState();
  }
}

class _TurnBoxRouteState extends State<TurnBoxRoute> {
  double _turns = .0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TurnBox(
            turns: _turns,
            speed: 500,
            child: Icon(
              Icons.refresh,
              size: 50,
            ),
          ),
          TurnBox(
            turns: _turns,
            speed: 1000,
            child: Icon(
              Icons.refresh,
              size: 150,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _turns += .2;
                });
              },
              child: Text("顺势针旋转1/5圈")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _turns -= .2;
                });
              },
              child: Text("逆势针旋转1/5圈")),
        ],
      ),
    );
  }
}
