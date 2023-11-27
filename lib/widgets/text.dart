import 'package:flutter/material.dart';

Widget text(String object) {
  return Text(
    object,
    style: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    textAlign: TextAlign.start,
  );
}
