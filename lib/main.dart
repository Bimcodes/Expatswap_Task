import 'package:expatswap_task/information_sheet.dart';
import 'package:expatswap_task/user_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserData(),
      child: const MaterialApp(
        home: Information(),
      ),
    ),
  );
}
