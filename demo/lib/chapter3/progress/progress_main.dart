import 'package:demo/chapter3/progress/progress_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ProgressMain());
}

class ProgressMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProgressMain',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
        title: Text('Progress'),
      ),
      body: ProgressRoute(),
    );
  }
}
