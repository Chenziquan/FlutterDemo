import 'package:flutter/material.dart';

void main() {
  runApp(SnackBarApp());
}

class SnackBarApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SnackBar APP",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeRoute(),
    );
  }
}

class HomeRoute extends StatelessWidget {
  static GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text("子树中获取State对象"),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return ElevatedButton(
                onPressed: () {
                  /*ScaffoldState _state =
                      context.findAncestorStateOfType();
                  _state.showSnackBar(SnackBar(
                    content: Text("我是SnackBar"),
                  ));*/
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("我是SnackBar"),
                  ));
                },
                child: Text("显示SnackBar"));
          },
        ),
      ),
    );
  }
}
