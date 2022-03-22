import 'dart:math';

import 'package:flutter/material.dart';

class CustomPaintRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RepaintBoundary(
            child: CustomPaint(
              size: Size(300, 300),
              painter: MyPainter(),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('刷新')),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    print('print');
    var rect = Offset.zero & size;
    // 画棋盘
    drawChessboard(canvas, rect);
    // 画棋子
    drawPieces(canvas, rect);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  void drawChessboard(Canvas canvas, Rect rect) {
    // 棋盘背景
    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.fill
      ..color = Color(0xFFDCC48C);
    canvas.drawRect(rect, paint);

    // 画棋盘网格
    paint
      ..style = PaintingStyle.stroke
      ..color = Colors.black38
      ..strokeWidth = 1.0;

    // 划横线
    for (int i = 0; i <= 15; ++i) {
      double dy = rect.top + rect.height / 15 * i;
      canvas.drawLine(Offset(rect.left, dy), Offset(rect.right, dy), paint);
    }

    // 划竖线
    for (int i = 0; i <= 15; ++i) {
      double dx = rect.left + rect.width / 15 * i;
      canvas.drawLine(Offset(dx, rect.top), Offset(dx, rect.bottom), paint);
    }
  }

  void drawPieces(Canvas canvas, Rect rect) {
    double eWidth = rect.width / 15;
    double eHeight = rect.height / 15;

    // 画一个黑子
    var paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black;

    canvas.drawCircle(
        Offset(rect.center.dx - eWidth / 2, rect.center.dy - eWidth / 2),
        min(eWidth / 2, eHeight / 2) - 2,
        paint);

    // 画一个白子
    paint.color = Colors.white;
    canvas.drawCircle(
        Offset(rect.center.dx + eWidth / 2, rect.center.dy - eHeight / 2),
        min(eWidth / 2, eHeight / 2) - 2,
        paint);
  }
}
