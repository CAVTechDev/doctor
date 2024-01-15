// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:doctor/components/my_textfield.dart';
import 'package:doctor/pages/login_pages/login_page_P.dart';
import 'package:doctor/pages/login_pages/signed_page.dart';
import 'package:doctor/pages/login_pages/signup_doctor.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final FirstNameController = TextEditingController();
  final LastNameController = TextEditingController();
  final MiddleNameController = TextEditingController();
  final AgeController = TextEditingController();
  final SexController = TextEditingController();
  final HeightController = TextEditingController();
  final WeightController = TextEditingController();
  final MailController = TextEditingController();
  final PasswordController = TextEditingController();
  final ConfirmPasswordController = TextEditingController();

  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignUpDoctor();
                            }));
                          },
                          child: Text("Register As A Doctor")),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Fill Up Necessary Information",
                  style: TextStyle(color: Colors.grey.shade400),
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                    controller: FirstNameController,
                    hintText: "First Name",
                    obsureText: false),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                    controller: MiddleNameController,
                    hintText: "Middle Name",
                    obsureText: false),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                    controller: LastNameController,
                    hintText: "Last Name",
                    obsureText: false),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                    controller: AgeController,
                    hintText: "Age",
                    obsureText: false),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                    controller: SexController,
                    hintText: "Sex",
                    obsureText: false),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                    controller: HeightController,
                    hintText: "Height",
                    obsureText: false),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                    controller: WeightController,
                    hintText: "Weight",
                    obsureText: false),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                    controller: MailController,
                    hintText: "Email",
                    obsureText: false),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                    controller: PasswordController,
                    hintText: "Password",
                    obsureText: true),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                    controller: ConfirmPasswordController,
                    hintText: "Confirm Password",
                    obsureText: true),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return RegisteredPage();
                    })));
                  },
                  child: Container(
                      padding: EdgeInsets.all(25),
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have An Account?",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return LogInPatient();
                        })));
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
