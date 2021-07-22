import 'package:demo/chapter8/event/event_bus.dart';
import 'package:flutter/material.dart';

class LoginRoute extends StatelessWidget {
  EventBus e = EventBus();

  @override
  Widget build(BuildContext context) {
    TextEditingController _name = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Column(
        children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '用户名',
              prefixIcon: Icon(Icons.person),
            ),
            controller: _name,
          ),
          TextButton(
              onPressed: () {
                e.emit('login', _name.text);
                Navigator.pop(context);
              },
              child: Text('登录')),
        ],
      ),
    );
  }
}
