import 'package:demo/chapter3/checkbox/checkbox_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CheckboxMain());
}

class CheckboxMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckboxMain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: Text('Checkbox'),
      ),
      body: Container(
        child: CheckboxRoute(),
      ),
    );
  }
}
