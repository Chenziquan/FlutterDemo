import 'package:flutter/material.dart';

class WrapRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      alignment: WrapAlignment.center,
      children: [
        Chip(
          label: Text('Hamilton'),
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('H'),
          ),
        ),
        Chip(
          label: Text('Lafayette'),
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('L'),
          ),
        ),
        Chip(
          label: Text('Mulligan'),
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('M'),
          ),
        ),
        Chip(
          label: Text('Laurens'),
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('L'),
          ),
        ),
        Chip(
          label: Text('Jesse'),
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('J'),
          ),
        ),
        Chip(
          label: Text('Chen'),
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('C'),
          ),
        ),
        Chip(
          label: Text('Bom'),
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('B'),
          ),
        ),
      ],
    );
  }
}
