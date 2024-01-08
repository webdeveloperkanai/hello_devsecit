// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';

DSIProressDialog(context) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      content: Container(
        height: 45,
        child: Row(
          children: const [
            CircularProgressIndicator(),
            SizedBox(width: 10),
            Text("Please wait...")
          ],
        ),
      ),
    ),
  );
}

DSIAlertDialog(context, String text, Function onPressed) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      content: Text(text),
      actions: [
        TextButton(
            onPressed: () {
              onPressed();
            },
            child: Text("Ok"))
      ],
    ),
  );
}

DSIErrorDialog(context, String text, Function onPressed) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      content: Text(text),
      actions: [
        TextButton(
            onPressed: () {
              onPressed();
            },
            child: Text("Try again later"))
      ],
    ),
  );
}
