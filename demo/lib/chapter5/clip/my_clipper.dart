import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Rect> {
  @override
  getClip(Size size) {
    return Rect.fromLTRB(10.0, 15.0, 40.0, 30.0);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}
