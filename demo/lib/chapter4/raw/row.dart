import 'package:flutter/material.dart';

class RowSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(' hello world.'),
            Text(' I am jack '),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(' hello world.'),
            Text(' I am jack '),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          textDirection: TextDirection.rtl,
          children: [
            Text(' hello world.'),
            Text(' I am jack '),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.up,
          children: [
            Text(
              ' hello world.',
              style: TextStyle(fontSize: 30.0),
            ),
            Text(' I am jack '),
          ],
        ),
      ],
    );
  }
}
