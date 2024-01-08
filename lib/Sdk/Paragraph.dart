// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  var text, color, fontWeight, fontSize;
  Paragraph(
      {super.key,
      required this.text,
      this.color,
      this.fontWeight,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: fontSize.toString() != "null"
              ? double.parse(fontSize.toString())
              : double.parse("14"),
          fontWeight: fontWeight ?? FontWeight.normal),
    );
  }
}
