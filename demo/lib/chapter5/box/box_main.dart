import 'package:demo/chapter5/box/box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BoxMain());
}

class BoxMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BoxMain',
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
        child: BoxRoute(),
      ),
    );
  }
}
