import 'package:demo/chapter3/button/button_set.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ButtonMain());
}

class ButtonMain extends StatelessWidget {
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
        child: ButtonSet(),
      ),
    );
  }
}
