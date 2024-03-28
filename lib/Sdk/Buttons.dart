// ignore_for_file: must_be_immutable, file_names, camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';

class DSI_PRIMARY_BUTTON extends StatelessWidget {
  DSI_PRIMARY_BUTTON({
    super.key,
    required this.title,
    this.borderradius,
    this.buttonColor,
    this.height,
    this.textColor,
    this.width,
    required this.onPressed,
    this.alignment,
    this.border,
    this.fontSize,
    this.fontWeight,
  });
  final String title;
  final Function onPressed;
  var height,
      width,
      buttonColor,
      borderradius,
      textColor,
      alignment,
      fontSize,
      border,
      fontWeight;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        alignment: alignment ?? Alignment.center,
        height: double.parse(height) ?? 45,
        width: double.parse(width) ?? MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: buttonColor ?? Colors.blue,
          borderRadius: borderradius ?? BorderRadius.circular(35),
          border: border ?? Border.all(color: Colors.white),
        ),
        child: Text(
          title.toString(),
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: fontSize ?? 14,
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

class DSI_SECONDARY_BUTTON extends StatelessWidget {
  DSI_SECONDARY_BUTTON({
    super.key,
    required this.title,
    this.borderradius,
    this.buttonColor,
    this.height,
    this.textColor,
    this.width,
    required this.onPressed,
    this.alignment,
    this.border,
    this.fontSize,
    this.fontWeight,
  });
  final String title;
  final Function onPressed;
  var height,
      width,
      buttonColor,
      borderradius,
      textColor,
      alignment,
      fontSize,
      border,
      fontWeight;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: height ?? 45,
        alignment: alignment ?? Alignment.center,
        width: width ?? MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: buttonColor ?? Color.fromARGB(255, 109, 106, 106),
          borderRadius: borderradius ?? BorderRadius.circular(35),
          border: border ?? Border.all(color: Colors.white),
        ),
        child: Text(
          title.toString(),
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: fontSize ?? 14,
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

class DSI_ICON_BUTTON extends StatelessWidget {
  DSI_ICON_BUTTON({
    super.key,
    required this.title,
    this.borderradius,
    this.buttonColor,
    this.height,
    this.textColor,
    this.width,
    required this.icon,
    required this.onPressed,
    this.iconSize,
  });
  final String title;
  var height, width, buttonColor, borderradius, textColor;
  var icon, iconSize;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: height ?? 45,
        width: width ?? MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: buttonColor ?? Colors.blue,
          borderRadius: borderradius ?? BorderRadius.circular(35),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: iconSize ?? 16,
            ),
            SizedBox(width: 10),
            Text(
              title.toString(),
              style: TextStyle(color: textColor ?? Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
