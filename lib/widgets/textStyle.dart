import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle MyTextStyle1({
    required Color color,
    fontWeight = FontWeight.normal,
    fontSize = 15.0,
  }) =>
      TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight);
}
