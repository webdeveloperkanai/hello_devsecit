// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';

class H3 extends StatelessWidget {
  var text, color, fontWeight, fontSize, textAlign, fontFamily;
  H3({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.fontSize,
    this.fontFamily,
  });

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
        fontWeight: fontWeight ?? FontWeight.w500,
        fontFamily: fontFamily ?? "Airal",
      ),
      softWrap: true,
    );
  }
}

class H4 extends StatelessWidget {
  var text, color, fontWeight, fontSize, textAlign, fontFamily;
  H4({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.fontSize,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize.toString() != "null"
            ? double.parse(fontSize.toString())
            : double.parse("15"),
        fontWeight: fontWeight ?? FontWeight.w500,
        fontFamily: fontFamily ?? "Airal",
      ),
      softWrap: true,
    );
  }
}
