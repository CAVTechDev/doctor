// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SpaPage extends StatelessWidget {
  const SpaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rethink your Spa Style",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("tipimags/washing.jpg"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                """
Pregnancy is definitely a time for pampering, but you need to be careful. 
Avoid saunas, which can make you overheat. The same goes for hot tubs. 
Also, certain essential oils can cause uterine contractions, especially during the first and second trimesters,
so check with your massage therapist to make sure only safe ones are being used.
                  
On the list to avoid: juniper, rosemary, and clary sage. The same goes for over-the-counter medicines and supplements containing these herbal remedies. 
Don't take them without first consulting your obstetrician or midwife.
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
