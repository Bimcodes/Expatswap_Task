import 'package:expatswap_task/address.dart';
import 'package:expatswap_task/dashboard.dart';
import 'package:expatswap_task/date_of_birth.dart';
import 'package:expatswap_task/email.dart';
import 'package:expatswap_task/name.dart';
import 'package:expatswap_task/phone_number.dart';
import 'package:expatswap_task/widgets/button.dart';
import 'package:expatswap_task/widgets/text.dart';
// import 'package:expatswap_task/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:expatswap_task/constants/colors.dart';
// import 'package:inom/dashborad.dart';
import 'package:provider/provider.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  bool isLoading = false;
  _submit() async {
    setState(() {
      isLoading = true;
    });
    // String email = emailController.text;
    // String name = nameController.text;
    // String phoneNumber = phoneNumberController.text;
    // String dateOfBirth = dateOfBirthController.text;
    // String address = addressController.text;
  }

  @override
  Widget build(BuildContext context) {
    // var userData = Provider.of<UserData>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: blue,
          title: Text(
            'Information Page',
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Form(
                  key: _formKey,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      text('Name'),
                      TextFormField(
                        controller: nameController,
                        onChanged: (value) {
                          Provider.of<NameProvider>(context, listen: false)
                              .updateName(value);
                        },
                      ),
                      // textField(nameController, TextInputType.name,
                      //     'Enter your name', false, (value) {
                      //   userData.userName = value;
                      // }, hintText: 'Abimbola'),
                      const SizedBox(
                        height: 10,
                      ),
                      text('Email Address'),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          Provider.of<EmailProvider>(context, listen: false)
                              .updateName(value);
                        },
                      )
                      // textField(emailController, TextInputType.emailAddress,
                      //     'Enter valid email address', true, (newValue) {
                      //   userData.email = newValue;
                      // }, hintText: 'example@gmail.com', isEmail: true),
                      ,
                      const SizedBox(
                        height: 10,
                      ),
                      text('Phone Number'),
                      // textField(phoneNumberController, TextInputType.number,
                      //     'Enter your phone number', false, (value) {
                      //   userData.phoneNumber = value;
                      // }, hintText: '+2349017250087'),
                      TextFormField(
                        controller: phoneNumberController,
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          Provider.of<PhoneNumberProvider>(context,
                                  listen: false)
                              .updateName(value);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      text('Date of Birth'),
                      // textField(dateOfBirthController, TextInputType.datetime,
                      //     'Enter your date of birth', false, (value) {
                      //   userData.dateOfBirth = value;
                      // }, hintText: '24/07/1642'),
                      TextFormField(
                        controller: dateOfBirthController,
                        keyboardType: TextInputType.datetime,
                        onChanged: (value) {
                          Provider.of<DateOfBirthProvider>(context,
                                  listen: false)
                              .updateName(value);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      text('Address'),
                      //
                      TextFormField(
                        controller: addressController,
                        keyboardType: TextInputType.streetAddress,
                        onChanged: (value) {
                          Provider.of<AddressProvider>(context, listen: false)
                              .updateName(value);
                        },
                      ),
                      button(() {
                        _formKey.currentState!.validate() ? _submit() : null;

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DashBoard()),
                        );
                      }, 'Submit', 50, 327, white, blue, link)
                    ],
                  ),
                ),
        ));
  }
}
