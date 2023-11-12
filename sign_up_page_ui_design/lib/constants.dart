import 'package:flutter/material.dart';

const kTextFormFieldStyle = InputDecoration(
  fillColor: Color(0xFF2c223a),
  filled: true,
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  ),
);
