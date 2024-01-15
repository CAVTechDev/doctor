// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BirthPlanPage extends StatelessWidget {
  const BirthPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Writing A Birth Plan",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("tipimags/writing2.jpg"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text("""
Determined to have a doula? Counting on that epidural? Write down your wishes and give a copy to everyone involved in your labor and delivery. Here are some things to consider when writing your birth plan:
  1. Who you want present
  2. Procedures you want to avoid
  3. What positions you prefer for labor and delivery
  4. Special clothing you'd like to wear
  5. Whether you want music or a special focal point
  6. Whether you want pain medications and what kind
  7. What to do if complications arise      
"""),
            )
          ],
        ),
      ),
    );
  }
}
