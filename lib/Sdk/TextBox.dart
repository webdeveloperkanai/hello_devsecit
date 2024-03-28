// ignore_for_file: must_be_immutable, camel_case_types, file_names, prefer_typing_uninitialized_variables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class DSI_TEXT_BOX extends StatelessWidget {
  DSI_TEXT_BOX(
      {super.key,
      this.label,
      this.border,
      required this.controller,
      this.borderradius,
      this.prefix,
      this.suffix,
      this.height,
      this.width,
      this.textAlign,
      this.textAlignVertical,
      this.isNumber,
      this.isPassword,
      this.decoration});
  var label,
      border,
      borderradius,
      controller,
      prefix,
      suffix,
      height,
      width,
      textAlign,
      textAlignVertical,
      isNumber,
      isPassword,
      decoration;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 45,
      width: width ?? 230,
      child: TextFormField(
        obscureText: isPassword.toString() == "true" ? true : false,
        keyboardType: isNumber.toString() == "true"
            ? TextInputType.number
            : TextInputType.text,
        textAlign: textAlign ?? TextAlign.start,
        textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
        controller: controller,
        decoration: decoration ??
            InputDecoration(
              label: Text(label ?? ""),
              border: border ??
                  OutlineInputBorder(
                    borderRadius: borderradius ?? BorderRadius.circular(35),
                  ),
            ),
      ),
    );
  }
}

class DSI_TEXT_BOX_WITH_VALUE extends StatelessWidget {
  DSI_TEXT_BOX_WITH_VALUE(
      {super.key,
      this.label,
      this.border,
      this.borderradius,
      this.prefix,
      this.suffix,
      this.height,
      this.width,
      this.textAlign,
      this.textAlignVertical,
      this.isNumber,
      this.isPassword,
      required this.onChanged,
      required this.initialValue,
      this.decoration});
  var label,
      border,
      borderradius,
      prefix,
      suffix,
      height,
      width,
      textAlign,
      textAlignVertical,
      isNumber,
      isPassword,
      initialValue,
      decoration;
  Function onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 55,
      width: width ?? 230,
      child: TextFormField(
        obscureText: isPassword ?? false,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        textAlign: textAlign ?? TextAlign.start,
        textAlignVertical: textAlignVertical ?? TextAlignVertical.bottom,
        initialValue: initialValue ?? "",
        onChanged: (v) {
          onChanged();
        },
        decoration: decoration ??
            InputDecoration(
              label: Text(label ?? ""),
              border: border ??
                  OutlineInputBorder(
                    borderRadius: borderradius ?? BorderRadius.circular(35),
                  ),
            ),
      ),
    );
  }
}
