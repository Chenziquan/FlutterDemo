import 'dart:async';

import 'package:demo/chapter2/counter/counter.dart';
import 'package:flutter/material.dart';

void main() {
  /*try {
    Future.delayed(Duration(seconds: 1)).then((e) => Future.error("xxx"));
  } catch (e) {
    print(e);
  }*/

  runZoned(
    () => runApp(MyApp()),
    zoneSpecification: ZoneSpecification(
        print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
      parent.print(zone, "Intercapted: $line");
    }),
  );
}
