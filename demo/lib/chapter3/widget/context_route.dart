import 'package:flutter/material.dart';

void main(){
  runApp(ContextApp());
}

class ContextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContextRoute(),
    );
  }
}

class ContextRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Context测试"),
      ),
      body: Container(
        child: Builder(
          builder: (context) {
            Scaffold scaffold = context.findAncestorWidgetOfExactType();
            return (scaffold.appBar as AppBar).title;
          },
        ),
      ),
    );
  }
}
