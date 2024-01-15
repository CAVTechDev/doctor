// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PPDPage extends StatelessWidget {
  const PPDPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Learn about Post Partun Depression",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Image.asset("tipimags/educate2.jpg"),
          SizedBox(
            height: 20,
          ),
          Text(
            """ 
You've probably heard of postpartum depression (PPD) and even postpartum anxiety (PPA),
but you may not know that 10% to 25% of pregnant people experience symptoms of major depression during pregnancy.
Prenatal depression comes with many risks, including a higher risk of preterm labor. If you're feeling unexplainably sad,
angry, or guilty—or if you lose interest in activities you usually enjoy or sleep too little or too much—tell a health care provider.
Therapy, a support group, an antidepressant medication, or a combination of the three will likely help.
""",
            style: TextStyle(color: Colors.black, fontSize: 16, wordSpacing: 2),
          )
        ],
      ),
    );
  }
}
