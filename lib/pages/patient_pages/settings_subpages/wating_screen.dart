// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor/pages/patient_pages/settings_subpages/connected.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WaitingScreen extends StatelessWidget {
  const WaitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blue,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Lottie.asset("assets/animation_llvjxg2z.json"),
            SizedBox(
              height: 40,
            ),
            Text(
              "Waiting for Connection....",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ConnectedPage();
                  }));
                },
                child: Text("Connect",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )))
          ],
        ),
      ),
    );
  }
}
