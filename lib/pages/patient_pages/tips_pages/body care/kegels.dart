// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class KegelsPage extends StatelessWidget {
  const KegelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practicing Kegels",
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
            Image.asset("tipimags/kegels.jpg"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                """
Kegel exercises strengthen the pelvic floor muscles, which support your bladder, bowels, and uterus.
Done correctly, this simple exercise can help make your delivery easier and prevent problems later with incontinence.
The best part: No one can tell you're doing them—so you can practice Kegels in the car, while you're sitting at your desk, 
or even standing in line at the grocery store.
      
Here's how to do them:
1. Practice squeezing as though you're stopping the flow of urine when you use the bathroom.
2. Hold for three seconds, then relax for three.
3. Repeat 10 times for a complete set.
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
