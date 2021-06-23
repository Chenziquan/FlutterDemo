import 'package:flutter/material.dart';

class DialogCheckbox extends StatefulWidget {
  DialogCheckbox({Key key, this.value, @required this.onChanged});

  final ValueChanged<bool> onChanged;
  final bool value;

  @override
  State<StatefulWidget> createState() {
    return _DialogCheckboxState();
  }
}

class _DialogCheckboxState extends State<DialogCheckbox> {
  bool value;

  @override
  void initState() {
    value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: value,
        onChanged: (v) {
          widget.onChanged(v);
          setState(() {
            value = v;
          });
        });
  }
}
