import 'package:flutter/material.dart';

class CheckboxRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CheckboxRouteState();
  }
}

class _CheckboxRouteState extends State<CheckboxRoute> {
  bool _switchSelected = false;
  bool _checkboxSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
          value: _switchSelected,
          onChanged: (value) {
            setState(() {
              _switchSelected = value;
            });
          },
        ),
        Checkbox(
          value: _checkboxSelected,
          tristate: true,
          onChanged: (value) {
            setState(() {
              _checkboxSelected = value;
            });
          },
        ),
      ],
    );
  }
}
