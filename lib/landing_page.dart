import 'package:expatswap_task/auth_service.dart';
import 'package:expatswap_task/information_sheet.dart';
import 'package:flutter/material.dart';

import 'constants/colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        title: const Text('Login',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login with google',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                AuthService().signInWithGoogle();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Information()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[200],
                ),
                child: Image.asset(
                  'images/google_icon.png',
                  height: 40,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
