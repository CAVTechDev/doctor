// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TravelsPage extends StatelessWidget {
  const TravelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Traveling Smart",
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
            Image.asset("tipimags/traveling.jpg"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text("""
Go ahead: Book that flight, but take some precautions. Mid-pregnancy (14 to 28 weeks) is the best time to fly.
By this time, you're probably over morning sickness. The risk of miscarriage or early delivery is also relatively low.
Still, you should check with your doctor about any travel plans and make sure the airline has no restrictions for pregnant people.    

On the plane, drink plenty of water to stay hydrated, and get up and walk around every half hour to reduce the risk of blood clots. 
An aisle seat will give you more room and make trips to the bathroom easier.

In the car, continue to wear a safety belt with the shoulder portion of the restraint positioned over the collarbone. 
The lap portion should be placed under the belly as low as possible on the hips and across the upper thighs, never on or above the abdomen
"""),
            )
          ],
        ),
      ),
    );
  }
}
