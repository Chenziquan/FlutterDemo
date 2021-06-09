import 'package:demo/chapter5/clip/my_clipper.dart';
import 'package:flutter/material.dart';

class ClipRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget car = Image.asset(
      'images/car.jpg',
      width: 60.0,
    );
    return Center(
      child: Column(
        children: [
          car,
          ClipOval(
            child: car,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: car,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                widthFactor: .5,
                child: car,
              ),
              Text(
                '你好世界',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRect(
                child: Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5,
                  child: car,
                ),
              ),
              Text(
                '你好世界',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: ClipRect(
              clipper: MyClipper(),
              child: car,
            ),
          )
        ],
      ),
    );
  }
}
