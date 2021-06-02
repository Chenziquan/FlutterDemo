import 'package:demo/chapter3/progress/progress_route.dart';
import 'package:demo/chapter4/flex/flex_route.dart';
import 'package:demo/chapter4/raw/column.dart';
import 'package:demo/chapter4/raw/column_nested.dart';
import 'package:demo/chapter4/raw/row.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FlexMain());
}

class FlexMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlexMain',
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
        title: Text('Flex'),
      ),
      body: FlexRoute(),
    );
  }
}
