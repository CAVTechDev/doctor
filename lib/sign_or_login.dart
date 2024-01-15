// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'pages/login_pages/SignUp_page.dart';
import 'pages/login_pages/login_page_P.dart';

class SignOrLoginPage extends StatelessWidget {
  const SignOrLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(padding: EdgeInsets.all(20)),
            Image.asset("images/sign2.jpg"),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUpPage();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                    child: Text(
                      "Sign Up",
                    )),
                SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LogInPatient();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
                    child: Text("Log In"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
