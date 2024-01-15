// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EducatePage extends StatelessWidget {
  const EducatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Educate Yourself",
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
            Image.asset("tipimags/educate2.jpg"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                """
Even if this isn't your first baby, attending a childbirth class will help you feel more prepared for delivery.
Not only will you have the chance to learn more about childbirth and infant care, but you can also ask specific questions and voice concerns. 
You'll also become more acquainted with the facility and its staff.

Now is also a good time to brush up on your family's medical history. 
Talk to your doctor about problems with past pregnancies, and report any family incidences of congenital disorders.
""",
                style: TextStyle(
                    color: Colors.black, fontSize: 16, wordSpacing: 2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
