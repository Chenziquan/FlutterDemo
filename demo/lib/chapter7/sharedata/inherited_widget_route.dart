import 'package:demo/chapter7/sharedata/share_data_route.dart';
import 'package:demo/chapter7/sharedata/share_data_widget.dart';
import 'package:flutter/material.dart';

class InheritedWidgetRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InheritedWidgetRouteState();
  }
}

class _InheritedWidgetRouteState extends State {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShareDataWidget(
        data: count,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: ShareDataRoute()),
            ElevatedButton(
                onPressed: () => setState(() => ++count),
                child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
