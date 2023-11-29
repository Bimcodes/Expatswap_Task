import 'package:expatswap_task/firebase_options.dart';
import 'package:expatswap_task/landing_page.dart';
import 'package:expatswap_task/user_model/address.dart';
import 'package:expatswap_task/user_model/date_of_birth.dart';
import 'package:expatswap_task/user_model/email.dart';
import 'package:expatswap_task/information_sheet.dart';
import 'package:expatswap_task/user_model/name.dart';
import 'package:expatswap_task/user_model/phone_number.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        home: LandingPage(),
      ),
    ),
  );
}
