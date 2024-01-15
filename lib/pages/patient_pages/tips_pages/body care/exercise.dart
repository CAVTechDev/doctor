// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exercises",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("tipimags/exercise1.jpg"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                """
Staying active is important for your general health and can help you reduce stress,
improve circulation, and boost your mood. It can also encourage better sleep. 
Studies have shown that exercise has many benefits to support a healthy pregnancy, including helping to lower the risk of preeclampsia.

Take a pregnancy exercise class or walk at least 15 to 20 minutes a day at a moderate pace—in cool, shaded areas or indoors in order to prevent overheating.

Pilates, yoga, swimming, and walking are also great activities for most pregnant people, but be sure to check with a health care provider before starting any exercise program. 
Aim for 30 minutes of exercise most days of the week. 
Listen to your body, though, and don't overdo it.
""",
                style: TextStyle(
                    fontSize: 16, color: Colors.black, wordSpacing: 2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
