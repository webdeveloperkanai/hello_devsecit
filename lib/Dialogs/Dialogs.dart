import 'package:flutter/material.dart';

devProressDialog(context) {
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

devAlertDialog(context, text) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      content: Text(text),
      actions: [TextButton(onPressed: () {}, child: Text("Ok"))],
    ),
  );
}

devErrorDialog(context, text) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      content: Text(text),
      actions: [TextButton(onPressed: () {}, child: Text("Try again later"))],
    ),
  );
}
