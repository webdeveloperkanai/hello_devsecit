import 'package:flutter/material.dart';

class DevBottomNav extends StatelessWidget {
  DevBottomNav({super.key, this.height, required this.items, this.color});
  final height, color;
  Widget items;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 70,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color.toString() != "null" ? color : Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [items],
      ),
    );
  }
}
