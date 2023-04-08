library hello_devsecit;

import 'package:flutter/material.dart';

export './Sdk/H1.dart';
export './Sdk/H2.dart';
export './Sdk/H3.dart';
export './Sdk/Paragraph.dart';
export './Sdk/HTTP/http.dart';
export './Nav/BottomBar.dart';

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
