import 'package:flutter/material.dart';

import 'home_route.dart';

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
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeRoute'),
      ),
      body: HomeRoute(),
    );
  }
}
