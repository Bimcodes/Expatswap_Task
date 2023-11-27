import 'package:flutter/material.dart';

Widget button(
  Function onTap,
  String title,
  double height,
  double width,
  Color textColor,
  Color buttonColor,
  Color borderColor,
) {
  return MaterialButton(
    onPressed: () {
      onTap();
    },
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100),
      side: BorderSide(color: borderColor),
    ),
    color: buttonColor,
    height: height,
    minWidth: width,
    child: Text(
      title,
      style: TextStyle(
        color: textColor,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
