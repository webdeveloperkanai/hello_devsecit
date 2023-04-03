import 'package:flutter/material.dart';

export './H1.dart';
export './H2.dart';
export './H3.dart';
export './Paragraph.dart';
export './HTTP/http.dart';

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
