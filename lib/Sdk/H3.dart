import 'package:flutter/material.dart';

class H3 extends StatelessWidget {
  var text, color, fontWeight, fontSize, textAlign;
  H3(
      {super.key,
      required this.text,
      this.color,
      this.fontWeight,
      this.textAlign,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: fontSize.toString() != "null"
              ? double.parse(fontSize.toString())
              : double.parse("18"),
          fontWeight: fontWeight ?? FontWeight.w500),
    );
  }
}
