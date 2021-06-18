import 'package:demo/chapter7/sharedata/share_data_widget.dart';
import 'package:flutter/material.dart';

class ShareDataRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShareDataRouteState();
  }
}

class _ShareDataRouteState extends State {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Dependencies change');
  }
}
