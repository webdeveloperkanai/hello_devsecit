import 'dart:html' as html show window;

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'hello_devsecit_platform_interface.dart';
export './Sdk/H1.dart';
export './Sdk/H2.dart';
export './Sdk/H3.dart';
export './Sdk/Paragraph.dart';
export './Sdk/HTTP/http.dart';
export './Nav/BottomBar.dart';
export './Sdk/Buttons.dart';
export './Sdk/TextBox.dart';

/// A web implementation of the DsiProuiPlatform of the DsiProui plugin.
class HelloDevsecitWeb extends HelloDevsecitPlatform {
  /// Constructs a DsiProuiWeb
  HelloDevsecitWeb();

  static void registerWith(Registrar registrar) {
    HelloDevsecitPlatform.instance = HelloDevsecitWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}

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
