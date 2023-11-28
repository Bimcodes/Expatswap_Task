import 'package:flutter/material.dart';

class EmailProvider extends ChangeNotifier {
  String _email = '';

  String get email => _email;

  void updateName(String newEmail) {
    _email = newEmail;
    notifyListeners();
  }
}
