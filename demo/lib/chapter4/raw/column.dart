import 'package:flutter/material.dart';

class ColumnSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Hi'),
        Text('world'),
      ],
    );
  }
}
