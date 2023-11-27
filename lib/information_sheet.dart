import 'package:flutter/material.dart';
import 'package:expatswap_task/button.dart';
import 'package:expatswap_task/constants/colors.dart';
// import 'package:inom/dashborad.dart';
import 'package:expatswap_task/text.dart';
import 'package:expatswap_task/text_field.dart';
import 'package:expatswap_task/user_data.dart';
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
    var userData = Provider.of<UserData>(context, listen: false);
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
                  child: ListView(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      text('Name'),
                      textField(nameController, TextInputType.name,
                          'Enter your name', false, (value) {
                        userData.userName = value;
                      }, hintText: 'Abimbola'),
                      const Spacer(),
                      text('Email Address'),
                      textField(emailController, TextInputType.emailAddress,
                          'Enter valid email address', true, (value) {
                        userData.email = value;
                      }, hintText: 'example@gmail.com', isEmail: true),
                      const Spacer(),
                      text('Phone Number'),
                      textField(phoneNumberController, TextInputType.number,
                          'Enter your phone number', false, (value) {
                        userData.phoneNumber = value;
                      }, hintText: '+2349017250087'),
                      const Spacer(),
                      text('Date of Birth'),
                      textField(dateOfBirthController, TextInputType.datetime,
                          'Enter your date of birth', false, (value) {
                        userData.dateOfBirth = value;
                      }, hintText: '24/07/1642'),
                      const Spacer(),
                      text('Address'),
                      textField(addressController, TextInputType.streetAddress,
                          'Enter your address', false, (value) {
                        userData.address = value;
                      }, hintText: '24, Ogablumo street, Lagos, Nigeria'),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 50, right: 50, top: 18),
                        child: button(() {
                          _formKey.currentState!.validate() ? _submit() : null;
                          userData.updateUserData(
                              userData.userName,
                              userData.email,
                              userData.phoneNumber,
                              userData.dateOfBirth,
                              userData.address);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const DashBoard()),
                          // );
                        }, 'Submit', 50, 327, white, blue, link),
                      )
                    ],
                  ),
                ),
        ));
  }
}
