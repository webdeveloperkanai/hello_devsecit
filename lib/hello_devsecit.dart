// ignore_for_file: prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'hello_devsecit_platform_interface.dart';

export './Sdk/H1.dart';
export './Sdk/H2.dart';
export './Sdk/H3.dart';
export './Sdk/Paragraph.dart';
export './Sdk/HTTP/http.dart';
export './Nav/BottomBar.dart';
export './Sdk/Buttons.dart';
export './Sdk/TextBox.dart';

go(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

goReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

goNamed(context, page) {
  Navigator.pushNamed(context, page);
}

goNamedReplace(context, page) {
  Navigator.pushReplacementNamed(context, page);
}

DSI_DRAWER_GO(context, page) {
  Navigator.pop(context);
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

DSI_DRAWER_GO_NAMED(context, page) {
  Navigator.pop(context);
  Navigator.pushNamed(context, page);
}

class DSIHexColor extends Color {
  static int _getColor(String hex) {
    String formattedHex = "FF" + hex.toUpperCase().replaceAll("#", "");
    return int.parse(formattedHex, radix: 16);
  }

  DSIHexColor(final String hex) : super(_getColor(hex));
}

class HelloDevsecit {
  Future<String?> getPlatformVersion() {
    return HelloDevsecitPlatform.instance.getPlatformVersion();
  }

  Future<String?> getAndroidId() {
    return HelloDevsecitPlatform.instance.getAndroidId();
  }
}
