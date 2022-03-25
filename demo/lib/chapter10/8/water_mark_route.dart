import 'package:demo/chapter10/8/text_water_mark_painter.dart';
import 'package:demo/chapter10/8/water_mark.dart';
import 'package:flutter/material.dart';

class WaterMarkRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return wTextWaterMark();
  }

  Widget wTextWaterMark() {
    return Stack(
      children: [
        wPage(),
        IgnorePointer(
          child: WaterMark(
            painter: TextWaterMarkPainter(
              text: 'Flutter 中国 @wendux',
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                color: Colors.black38, //为了水印能更清晰一些，颜色深一点
              ),
              rotate: -20, // 旋转 -20 度
            ),
          ),
        ),
      ],
    );
  }

  Widget wPage() {
    return Center(
      child: ElevatedButton(
        child: const Text('按钮'),
        onPressed: () => print('tab'),
      ),
    );
  }
}
