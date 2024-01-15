// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:doctor/components/button.dart';
import 'package:doctor/components/my_textfield.dart';
import 'package:doctor/components/square_tile.dart';
import 'package:doctor/pages/doctor_pages/home_page.dart';
import 'package:doctor/pages/login_pages/SignUp_page.dart';
import 'package:doctor/pages/login_pages/login_page_P.dart';
import 'package:flutter/material.dart';

class LoginDoctor extends StatelessWidget {
  LoginDoctor({super.key});

  final UserNameController = TextEditingController();
  final PasswordController = TextEditingController();
  final IDController = TextEditingController();

  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
            Icon(
              Icons.lock,
              size: 120,
              color: Colors.blue,
            ),
            SizedBox(
              height: 40,
            ),
            //welcome back, you've been missed
            Text(
              "Welcome back you've been missed",
              style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
            ),
            //username textfield
            //
            SizedBox(
              height: 25,
            ),
            MyTextField(
                controller: UserNameController,
                hintText: "Username",
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
                controller: IDController,
                hintText: "Doctor's ID",
                obsureText: true),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LogInPatient();
                      }));
                    },
                    child: Text(
                      "Patient Login",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    "Forgot Password/ID?",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            //sign in Button

            MyButton(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomeDoctor();
                }));
              },
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.9,
                    color: Colors.grey.shade400,
                  ),
                ),
                Text(
                  "or Continue with",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.9,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),

            //google sign in
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(imagePath: "images/google.png"),
                SizedBox(
                  width: 20,
                ),
                SquareTile(imagePath: "images/apple.png")
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a Member yet?",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUpPage();
                    }));
                  },
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
