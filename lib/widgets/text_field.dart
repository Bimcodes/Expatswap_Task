import 'package:flutter/material.dart';

Widget textField(TextEditingController controller, TextInputType type,
    String errorText, bool required, Function onChanged,
    {String hintText = "",
    int? maxLength,
    bool? obscured = false,
    bool? isEmail = false}) {
  return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        maxLength: TextField.noMaxLength,
        keyboardType: type,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        controller: controller,
        validator: required
            ? ((value) {
                if (value!.isEmpty) {
                  return errorText;
                } else if (isEmail!) {
                  if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                }
                return null;
              })
            : null,
        onChanged: (value) {
          onChanged;
        },
        obscureText: obscured!,
        decoration: InputDecoration(
            fillColor: const Color(0xffF5F5F7),
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xff717171),
              fontWeight: FontWeight.w700,
            )),
      ));
}
