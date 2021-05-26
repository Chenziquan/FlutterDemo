import 'package:flutter/material.dart';

class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取路由参数
    var args = ModalRoute.of(context).settings.arguments;
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text("EchoRoute"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Text(args),
        ),
      ),
    );
  }
}
