// ignore_for_file: prefer_const_constructors

import 'package:doctor/components/button.dart';
import 'package:doctor/pages/login_pages/login_page_P.dart';
import 'package:flutter/material.dart';

class RegisteredPage extends StatelessWidget {
  const RegisteredPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(padding: EdgeInsets.all(20)),
              Image.asset("images/signed.jpg"),
              SizedBox(
                height: 30,
              ),
              Text("You've Been Registered",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 30,
              ),
              MyButton(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return LogInPatient();
                })));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
