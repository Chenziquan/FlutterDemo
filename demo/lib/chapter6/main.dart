import 'package:demo/chapter6/infinite_gridview.dart';
import 'package:demo/chapter6/scoll_controller.dart';
import 'package:demo/chapter6/scroll_notification.dart';
import 'package:flutter/material.dart';

import 'custom_scroll_view.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(
        child: ScrollNotificationRoute(),
      ),
    );
  }
}
