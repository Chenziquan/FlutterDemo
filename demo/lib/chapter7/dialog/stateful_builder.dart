import 'package:flutter/material.dart';

class MyStatefulBuilder extends StatefulWidget {
  const MyStatefulBuilder({Key key, @required this.builder})
      : assert(builder != null),
        super(key: key);

  final StatefulWidgetBuilder builder;

  @override
  State<StatefulWidget> createState() {
    return _MyStatefulBuilderState();
  }
}

class _MyStatefulBuilderState extends State<MyStatefulBuilder> {
  @override
  Widget build(BuildContext context) {
    return widget.builder(context, setState);
  }
}
