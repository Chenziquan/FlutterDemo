import 'package:demo/chapter3/form/focus_route.dart';
import 'package:demo/chapter3/form/form_route.dart';
import 'package:demo/chapter3/form/textfiled_set.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FormMain());
}

class FormMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FormMain',
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
        title: Text('Form'),
      ),
      body: FormRoute(),
    );
  }
}
