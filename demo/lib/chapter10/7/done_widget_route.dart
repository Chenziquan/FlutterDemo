
import 'package:demo/chapter10/7/done_widget.dart';
import 'package:flutter/material.dart';

class DoneWidgetRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DoneWidget(),
          DoneWidget(
            outline: true,
          )
        ],
      ),
    );
  }
}
