import 'package:expatswap_task/address.dart';
import 'package:expatswap_task/date_of_birth.dart';
import 'package:expatswap_task/email.dart';
import 'package:expatswap_task/information_sheet.dart';
import 'package:expatswap_task/name.dart';
import 'package:expatswap_task/phone_number.dart';
import 'package:expatswap_task/user_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PhoneNumberProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NameProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AddressProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DateOfBirthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => EmailProvider(),
        )
      ],
      child: const MaterialApp(
        home: Information(),
      ),
    ),
  );
}
