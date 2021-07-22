import 'package:demo/chapter5/container/container.dart';
import 'package:flutter/material.dart';

class EventRoute extends StatefulWidget {
  @override
  Widget build(BuildContext context) {}

  @override
  State<StatefulWidget> createState() {
    return _EventRouteState();
  }
}

class _EventRouteState extends State {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          /* Listener(
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              width: 300.0,
              height: 150.0,
              child: Text(
                _event?.toString() ?? "",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onPointerDown: (PointerDownEvent event) {
              setState(() {
                _event = event;
              });
            },
            onPointerMove: (PointerMoveEvent event) {
              setState(() {
                _event = event;
              });
            },
            onPointerUp: (PointerUpEvent event) {
              setState(() {
                _event = event;
              });
            },
          ),
          Listener(
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(Size(300.0, 150.0)),
              child: Center(
                child: Text('Box A'),
              ),
            ),
            behavior: HitTestBehavior.opaque,
            onPointerDown: (event) => print('down A'),
          ),
          Stack(
            children: [
              Listener(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(300.0,200.0)),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                onPointerDown: (event) => print('down0'),
              ),
              Listener(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(200.0,100.0)),
                  child: Center(child: Text('左上角200*100范围内文本区域点击'),),
                ),
                behavior: HitTestBehavior.translucent,
                onPointerDown: (event) => print('down1'),
              ),
            ],
          ),*/
          /*Listener(
            child: AbsorbPointer(
              child: Listener(
                child: Container(
                  color: Colors.red,
                  width: 200.0,
                  height: 100.0,
                ),
                onPointerDown: (event) => print('in'),
              ),
            ),
            onPointerDown: (event) => print('out'),
          ),*/
          Listener(
            child: IgnorePointer(
              child: Listener(
                child: Container(
                  color: Colors.red,
                  width: 200.0,
                  height: 100.0,
                ),
                onPointerDown: (event) => print('in'),
              ),
            ),
            onPointerDown: (event) => print('out'),
          ),
        ],
      ),
    );
  }
}
