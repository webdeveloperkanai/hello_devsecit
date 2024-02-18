// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DSI_PRIMARY_BUTTON extends StatelessWidget {
  DSI_PRIMARY_BUTTON(
      {super.key,
      required this.title,
      this.borderradius,
      this.buttonColor,
      this.height,
      this.textColor,
      this.width,
      required this.onPressed});
  final String title;
  final Function onPressed;
  var height, width, buttonColor, borderradius, textColor;
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
        child: Text(
          title.toString(),
          style: TextStyle(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}

class DSI_SECONDARY_BUTTON extends StatelessWidget {
  DSI_SECONDARY_BUTTON(
      {super.key,
      required this.title,
      this.borderradius,
      this.buttonColor,
      this.height,
      this.textColor,
      this.width,
      required this.onPressed});
  final String title;
  final Function onPressed;
  var height, width, buttonColor, borderradius, textColor;
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
          color: buttonColor ?? Color.fromARGB(255, 109, 106, 106),
          borderRadius: borderradius ?? BorderRadius.circular(35),
        ),
        child: Text(
          title.toString(),
          style: TextStyle(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}

class DSI_ICON_BUTTON extends StatelessWidget {
  DSI_ICON_BUTTON(
      {super.key,
      required this.title,
      this.borderradius,
      this.buttonColor,
      this.height,
      this.textColor,
      this.width,
      required this.icon,
      required this.onPressed});
  final String title;
  var height, width, buttonColor, borderradius, textColor;
  var icon;
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
          children: [
            Icon(icon),
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
