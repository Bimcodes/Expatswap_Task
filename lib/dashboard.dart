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
            container(
              Row(
                children: [
                  const Text('Name :'),
                  const Divider(),
                  Text(Provider.of<NameProvider>(context).name),
                ],
              ),
            ),
            container(
              Row(
                children: [
                  const Text('Email Address:'),
                  const Divider(),
                  Text(Provider.of<EmailProvider>(context).email),
                ],
              ),
            ),
            container(
              Row(
                children: [
                  const Text('Phone Number:'),
                  const Divider(),
                  Text(Provider.of<PhoneNumberProvider>(context).number),
                ],
              ),
            ),
            container(
              Row(
                children: [
                  const Text('Date of birth:'),
                  const Divider(),
                  Text(Provider.of<DateOfBirthProvider>(context).date),
                ],
              ),
            ),
            container(
              Row(
                children: [
                  const Text('Address'),
                  const Divider(),
                  Text(Provider.of<AddressProvider>(context).address),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
