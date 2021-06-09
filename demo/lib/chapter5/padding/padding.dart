import 'package:flutter/material.dart';

class PaddingRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('JesseChen'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('Hello world'),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
                  child: Text('My love'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
