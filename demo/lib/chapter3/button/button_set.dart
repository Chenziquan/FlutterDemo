import 'package:flutter/material.dart';

class ButtonSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('ElevatedButton'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('TextButton'),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text('OutlinedButton'),
        ),
        IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: () {},
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.send),
          label: Text("send"),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('add'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('ElevatedButton Submit'),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(
              color: Colors.blue[700],
            )),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text('TextButton Submit'),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(
              color: Colors.blue[700],
            )),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            ),
          ),
        ),
      ],
    );
  }
}
