import 'package:demo/chapter3/image/icon_font.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ImageMain());
}

class ImageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ImageMain',
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
        title: Text('Image'),
      ),
      body: Container(
        child: IconFont(),
      ),
    );
  }
}
