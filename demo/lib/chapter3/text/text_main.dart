import 'package:demo/chapter3/text/text.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(TextMain());
}

class TextMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextMain',
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
        title: Text('Text'),
      ),
      body: Container(
        child: TextSet(),
      ),
    );
  }
}
