// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class DSIBottomNav extends StatelessWidget {
  DSIBottomNav({
    super.key,
    this.height,
    required this.items,
    this.color,
    this.navAlignment,
  });
  final height, color;
  var navAlignment;
  final List<Widget> items;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: navAlignment ?? Alignment.center,
      height: height ?? 70,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: color ?? Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: items,
      ),
    );
  }
}

class DSI_BOTTOM_NAV_BUTTON extends StatelessWidget {
  DSI_BOTTOM_NAV_BUTTON({
    super.key,
    required this.icon,
    required this.onPressed,
    this.label,
    this.textStyle,
    this.iconSize,
    this.activeColor,
    this.defaultColor,
    this.isActive,
  });
  var icon, label, textStyle, iconSize, isActive, activeColor, defaultColor;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Column(
        children: [
          Icon(
            icon,
            size: iconSize ?? 16,
            color: isActive.toString() != "null" && isActive
                ? activeColor ?? Colors.blue
                : defaultColor ?? Color.fromARGB(255, 4, 21, 34),
          ),
          if (label != null)
            Text(
              label,
              style: textStyle ??
                  TextStyle(
                    color: isActive.toString() != "null" && isActive
                        ? activeColor ?? Colors.blue
                        : defaultColor ?? Color.fromARGB(255, 4, 21, 34),
                  ),
            ),
        ],
      ),
    );
  }
}
