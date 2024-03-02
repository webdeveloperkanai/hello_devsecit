// ignore_for_file: must_be_immutable, camel_case_types, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DSI_TEXT_BOX extends StatelessWidget {
  DSI_TEXT_BOX({super.key, this.label, this.border});
  var label, border, borderradius;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label ?? ""),
        border: border ??
            OutlineInputBorder(
              borderRadius: borderradius ?? BorderRadius.circular(35),
            ),
      ),
    );
  }
}

class DSI_NUMBER_BOX extends StatelessWidget {
  DSI_NUMBER_BOX({super.key, this.label, this.border});
  var label, border, borderradius;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        label: Text(label ?? ""),
        border: border ??
            OutlineInputBorder(
              borderRadius: borderradius ?? BorderRadius.circular(35),
            ),
      ),
    );
  }
}

class DSI_PASSWORD_BOX extends StatelessWidget {
  DSI_PASSWORD_BOX({super.key, this.label, this.border});
  var label, border, borderradius;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        label: Text(label ?? ""),
        border: border ??
            OutlineInputBorder(
              borderRadius: borderradius ?? BorderRadius.circular(35),
            ),
      ),
    );
  }
}
