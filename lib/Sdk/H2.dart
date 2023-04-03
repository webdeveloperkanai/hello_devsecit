import 'package:flutter/material.dart';

class H2 extends StatelessWidget {
  var text, color, fontWeight, fontSize, textAlign;
  H2(
      {super.key,
      required this.text,
      this.color,
      this.fontWeight,
      this.fontSize,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: fontSize.toString() != "null"
              ? double.parse(fontSize.toString())
              : double.parse("21"),
          fontWeight: fontWeight ?? FontWeight.w500),
    );
  }
}
