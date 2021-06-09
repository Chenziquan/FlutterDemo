import 'package:demo/chapter5/box/box.dart';
import 'package:demo/chapter5/clip/clip.dart';
import 'package:demo/chapter5/container/container.dart';
import 'package:demo/chapter5/decorated/decorate.dart';
import 'package:demo/chapter5/transform/transform.dart';
import 'package:flutter/material.dart';

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
        child: ClipRoute(),
      ),
    );
  }
}
