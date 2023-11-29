import 'package:flutter/material.dart';

InputDecoration decoration(String hintText) {
  return InputDecoration(
      fillColor: const Color(0xffF5F5F7),
      filled: true,
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Color(0xff717171),
        fontWeight: FontWeight.w700,
      ));
}
