import 'package:demo/chapter8/gesture/gesture_recognizer_route.dart';
import 'package:demo/chapter8/gesture/scale_route.dart';
import 'package:demo/chapter8/notificaiton/notification_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Event());
}

class Event extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeRoute(),
    );
  }
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeRoute'),
      ),
      body: NotificationRoute(),
    );
  }
}
