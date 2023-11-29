import 'package:flutter/material.dart';

Widget container(Widget child) {
  return Container(
    height: 80,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
    padding: EdgeInsets.symmetric(vertical: 25),
    child: child,
  );
}
