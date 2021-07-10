import 'package:flutter/material.dart';

InputDecoration buildInputDecoration(IconData icons, String hinttext) {
  return InputDecoration(
    hintText: hinttext,
    prefixIcon: Icon(icons),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(80.0),
      borderSide: BorderSide(color: Colors.black, width: 2),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(80.0),
      borderSide: BorderSide(color: Colors.black, width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(80.0),
      borderSide: BorderSide(color: Colors.black, width: 2),
    ),
  );
}
