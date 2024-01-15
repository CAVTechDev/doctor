// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:doctor/pages/patient_pages/home_subpages/check_vitals.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WaitVitals extends StatefulWidget {
  const WaitVitals({super.key});

  @override
  State<WaitVitals> createState() => _WaitVitalsState();
}

class _WaitVitalsState extends State<WaitVitals> {
  @override
  void initState() {
    super.initState();
    // Delay navigation to the next page by 5 seconds
    Future.delayed(Duration(seconds: 15), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return CheckVitals();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blue,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Lottie.asset("assets/animation_llvjxg2z.json"),
            SizedBox(
              height: 80,
            ),
            Text(
              "Please wait while we update your Vital Readings",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
