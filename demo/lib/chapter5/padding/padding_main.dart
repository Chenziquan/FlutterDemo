import 'package:demo/chapter5/padding/padding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PaddingMain());
}

class PaddingMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PaddingMain',
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
        child: PaddingRoute(),
      ),
    );
  }
}
