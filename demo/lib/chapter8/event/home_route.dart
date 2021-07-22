import 'package:demo/chapter8/event/event_bus.dart';
import 'package:demo/chapter8/event/login_route.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  String name;
  EventBus e = new EventBus();

  @override
  Widget build(BuildContext context) {
    if(e == null){
      print('eventbus is null');
    }
    else{
      e.on('login', (arg) {
        setState(() {
          name = arg;
        });
      });
    }

    return Center(
      child: name == null
          ? TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginRoute();
                }));
              },
              child: Text('请登录'))
          : Text('你好，$name'),
    );
  }

  @override
  void dispose() {
    super.dispose();
    e.off('login');
  }
}
