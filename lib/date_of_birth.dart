import 'package:flutter/material.dart';

class DateOfBirthProvider extends ChangeNotifier {
  String _date = '';

  String get date => _date;

  void updateName(String newDate) {
    _date = newDate;
    notifyListeners();
  }
}
