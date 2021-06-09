import 'package:flutter/material.dart';

class BoxRoute extends StatelessWidget {
  Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: double.infinity,
            minHeight: 50.0,
          ),
          child: Container(
            height: 80.0,
            child: redBox,
          ),
        ),
        SizedBox(
          width: 80.0,
          height: 80.0,
          child: redBox,
        ),
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: 80.0, height: 80.0),
          child: redBox,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: 80.0, maxWidth: 80.0, minHeight: 80.0, maxHeight: 80.0),
          child: redBox,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
            child: redBox,
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0),
          child: UnconstrainedBox(
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
              child: redBox,
            ),
          ),
        )
      ],
    );
  }
}
