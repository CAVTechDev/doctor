// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, unused_element

import 'package:doctor/pages/patient_pages/settings_subpages/wating_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void _navigateAndShowDialog(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: ((context) {
    return WaitingScreen();
  })));
}

class DeviceIDPage extends StatelessWidget {
  final IDController = TextEditingController();

  DeviceIDPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blue,
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Lottie.asset("assets/animation_llvk127o.json"),
            SizedBox(
              height: 50,
            ),
            Text("Device ID?",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                    controller: IDController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      fillColor: Colors.white,
                      hintText: "Type in Device ID",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade300,
                      ),
                      filled: true,
                    ))),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WaitingScreen();
                }));
              },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple),
                child: Text(
                  "Connect",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
