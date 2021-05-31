import 'package:demo/chapter3/state/tapbox_c.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(StateMain());
}

class StateMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Demo',
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
        title: Text('Home'),
      ),
      body: Center(
        child: ParentWidget(),
      ),
    );
  }
}
