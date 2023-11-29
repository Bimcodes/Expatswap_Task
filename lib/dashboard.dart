// ignore_for_file: prefer_const_constructors

import 'package:expatswap_task/user_model/address.dart';
import 'package:expatswap_task/user_model/date_of_birth.dart';
import 'package:expatswap_task/user_model/email.dart';
import 'package:expatswap_task/user_model/name.dart';
import 'package:expatswap_task/user_model/phone_number.dart';
import 'package:flutter/material.dart';
import 'package:expatswap_task/widgets/container.dart';
import 'package:provider/provider.dart';

import 'constants/colors.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard',
            style: TextStyle(
                color: white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic)),
        backgroundColor: blue,
        centerTitle: true,
      ),
      drawerScrimColor: null,
      drawer: Drawer(
        backgroundColor: fill,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(Icons.edit),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(foregroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        // this line of code changes the color when it is pressed
                        return Colors.blue;
                      }
                      return white;
                    })),
                    child: Text(
                      'Edit information',
                      style: TextStyle(color: black, fontSize: 20),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 10, right: 25),
              child: Text(
                'Welcome back!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            container(
              Padding(
                padding: textpadding(),
                child: Row(
                  children: [
                    Text(
                      'Name: ',
                      style: textdesign2(),
                    ),
                    const Divider(),
                    Text(
                      Provider.of<NameProvider>(context).name,
                      style: textdesign(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            container(
              Padding(
                padding: textpadding(),
                child: Row(
                  children: [
                    Text(
                      'Email Address: ',
                      style: textdesign2(),
                    ),
                    const Divider(),
                    Text(
                      Provider.of<EmailProvider>(context).email,
                      style: textdesign(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            container(
              Padding(
                padding: textpadding(),
                child: Row(
                  children: [
                    Text(
                      'Phone Number: ',
                      style: textdesign2(),
                    ),
                    const Divider(),
                    Text(
                      Provider.of<PhoneNumberProvider>(context).number,
                      style: textdesign(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            container(
              Padding(
                padding: textpadding(),
                child: Row(
                  children: [
                    Text(
                      'Date of birth: ',
                      style: textdesign2(),
                    ),
                    const Divider(),
                    Text(
                      Provider.of<DateOfBirthProvider>(context).date,
                      style: textdesign(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            container(
              Padding(
                padding: textpadding(),
                child: Row(
                  children: [
                    Text(
                      'Address: ',
                      style: textdesign2(),
                    ),
                    const Divider(),
                    Text(
                      Provider.of<AddressProvider>(context).address,
                      style: textdesign(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  EdgeInsets textpadding() => const EdgeInsets.only(left: 20);

  TextStyle textdesign2() {
    return TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w800,
    );
  }

  TextStyle textdesign() {
    return const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
    );
  }
}
