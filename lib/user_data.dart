import 'package:flutter/material.dart';

class UserData extends ChangeNotifier {
  late String userName;
  late String email;
  late String phoneNumber;
  late String dateOfBirth;
  late String address;

  void updateUserData(
    String newUsername,
    String newEmail,
    String newPhoneNumber,
    String newDateOfBirth,
    String newAddress,
  ) {
    userName = newUsername;
    email = newEmail;
    phoneNumber = newPhoneNumber;
    dateOfBirth = newDateOfBirth;
    address = newAddress;
  }
}
