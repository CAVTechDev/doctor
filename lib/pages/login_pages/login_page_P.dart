// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, sort_child_properties_last, non_constant_identifier_names

import 'package:doctor/components/my_textfield.dart';
import 'package:doctor/components/square_tile.dart';
import 'package:doctor/pages/login_pages/SignUp_page.dart';
import 'package:doctor/widgets/navbar_roots_patient.dart';
import 'package:flutter/material.dart';

import '../../components/button.dart';
import 'login_page_D.dart';

class LogInPatient extends StatelessWidget {
  LogInPatient({super.key});

// text editing controller
  final UserNameController = TextEditingController();
  final PasswordController = TextEditingController();

//sign user in method

  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20.0, left: 15),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              //logo
              SizedBox(
                height: 50,
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

              SizedBox(
                height: 25,
              ),

              //username textfield
              MyTextField(
                controller: UserNameController,
                hintText: 'Username',
                obsureText: false,
              ),

              //password textfield
              SizedBox(
                height: 10,
              ),

              MyTextField(
                controller: PasswordController,
                hintText: 'Password',
                obsureText: true,
              ),
              //forgot pass word

              SizedBox(
                height: 15,
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
                          return LoginDoctor();
                        }));
                      },
                      child: Text(
                        "Doctors Login",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              //sign in button
              SizedBox(
                height: 25,
              ),

              MyButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NavBarRootsPatient();
                  }));
                },
              ),

              SizedBox(
                height: 40,
              ),
              //or continue with
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade400,
                      thickness: 0.9,
                    ),
                  ),
                  Text(
                    "or Continue with",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade400,
                      thickness: 0.9,
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 50,
              ),
              //google + apple sign in  button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google
                  SquareTile(imagePath: "images/google.png"),
                  SizedBox(
                    width: 20,
                  ),
                  //apple
                  SquareTile(imagePath: "images/apple.png")
                ],
              ),

              //not a member yet? Sign Up

              SizedBox(
                height: 50,
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
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
