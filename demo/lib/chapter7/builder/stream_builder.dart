import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreamBuilderRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text('没有Stream');
          case ConnectionState.waiting:
            return Text('等待数据...');
          case ConnectionState.active:
            return Text('active ${snapshot.data}');
          case ConnectionState.done:
            return Text('Stream已关闭');
        }
        return null;
      },
      stream: counter(),
    );
  }

  Stream counter() {
    return Stream.periodic(Duration(seconds: 1), (i) {
      return i;
    });
  }
}
