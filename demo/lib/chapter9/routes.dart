import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text('TapGoToRoute'),
        onPressed: () => {
          Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 500),
                pageBuilder: (BuildContext context, Animation animation,
                    Animation secondaryAnimation) {
                  return FadeTransition(
                    opacity: animation,
                    child: ARoute(),
                  );
                },
              )),
        },
      ),
    );
  }
}

class ARoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ARoute'),
      ),
      body: Center(
        child: Text('This is a route'),
      ),
    );
  }
}
