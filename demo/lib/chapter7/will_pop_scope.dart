import 'package:flutter/material.dart';

class WillPopScopeRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WillPopScopeRouteState();
  }
}

class _WillPopScopeRouteState extends State {
  DateTime _lastPressAt;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Container(
          alignment: Alignment.center,
          child: Text('1秒内连续按两次返回键退出'),
        ),
        onWillPop: () async {
          if (_lastPressAt == null ||
              DateTime.now().difference(_lastPressAt) > Duration(seconds: 1)) {
            _lastPressAt = DateTime.now();
            return false;
          }
          return true;
        });
  }
}
