// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ToxinsPage extends StatelessWidget {
  const ToxinsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Eliminating Toxins",
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
            Image.asset("tipimags/toxins.jpg"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                """
Because of their link to congenital disorders, miscarriage, and other pregnancy complications, you should avoid tobacco, alcohol, illicit drugs,
and even solvents such as paint 
thinners and nail polish remover while pregnant. Smoking cigarettes, for example, decreases oxygen flow to your
baby, and it's linked to preterm birth and other complications

"If you can't stop smoking, drinking, or using drugs, let your doctor know,"
recommends Roger Harms, MD, an OB-GYN at the Mayo Clinic. A doctor
can offer advice and support and refer you to a program that can help you quit.
            """,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ),
    );
  }
}
