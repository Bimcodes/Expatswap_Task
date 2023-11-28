import 'package:flutter/material.dart';

class PhoneNumberProvider extends ChangeNotifier {
  var _number = "";

  get name => _number;

  void updateName(var newNumber) {
    _number = newNumber;
    notifyListeners();
  }
}
