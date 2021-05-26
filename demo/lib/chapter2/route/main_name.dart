import 'package:demo/chapter2/route/new_route.dart';
import 'package:flutter/material.dart';
import 'echo_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "new_page": (context) => NewRoute(),
        "/": (context) => MyHomePage(
              title: "Flutter Demo Home Page",
            ),
        "echo": (context) => EchoRoute(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: _goNewRouteByName,
              child:
                  Text("Open new route", style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go",
        onPressed: () {},
        child: Icon(Icons.forward_sharp),
      ),
    );
  }

  void _goNewRouteByName() {
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => NewRoute()));
    // Navigator.pushNamed(context, "new_page");
    Navigator.pushNamed(context, "echo", arguments: "hi");
  }
}
