import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hollo world",
          textAlign: TextAlign.left,
        ),
        Text(
          "Hollo world! I'm Jack." * 4,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          "Hello world",
          textScaleFactor: 1.5,
        ),
        Text(
          "Hello world",
          style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              height: 1.2,
              fontFamily: "Courier",
              background: Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed),
        ),
        Text.rich(TextSpan(
          children: [
            TextSpan(text: "Home: "),
            TextSpan(
              text: "https://www.baidu.com",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ],
        )),
        DefaultTextStyle(
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("hello world"),
                Text("I am jack"),
                Text(
                  "I am jack",
                  style: TextStyle(
                    inherit: false,
                    color: Colors.grey,
                  ),
                ),
              ],
            )),
        Text(
          "Use the Raleway font for this text",
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 20.0,
          ),
        ),
        Text(
          "Use the AbrilFatface font for this text",
          style: TextStyle(
            fontFamily: 'AbrilFatface',
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}
