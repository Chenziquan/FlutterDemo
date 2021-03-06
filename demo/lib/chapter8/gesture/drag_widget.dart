import 'package:flutter/material.dart';

class DragWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DrageState();
  }
}

class _DrageState extends State with SingleTickerProviderStateMixin {
  // 距离顶部的偏移
  double _top = 0.0;

  // 距离左边的偏移
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            child: CircleAvatar(
              child: Text('A'),
            ),
            // 手指按下时会触发此回调
            onPanDown: (DragDownDetails e) {
              // 打印手指安夏的位置(相对于屏幕)
              print('用户手指按下:${e.globalPosition}');
            },
            // 手指滑动时会触发此回调
            onPanUpdate: (DragUpdateDetails e) {
              // 用户手指滑动时，更新偏移，重新构建
              setState(() {
                _left += e.delta.dx;
                _top += e.delta.dy;
              });
            },
            onPanEnd: (DragEndDetails e) {
              // 打印滑动结束时在x,y轴上的速度
              print(e.velocity);
            },
          ),
        ),
      ],
    );
  }
}
