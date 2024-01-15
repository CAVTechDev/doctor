// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopping the Right Way",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("tipimags/shopping.jpg"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                """
As your bump grows, so may your feet—or at least they may feel like they are. That's because your natural weight gain throws off your center of gravity, 
putting extra pressure on your tootsies. Over time, this added pressure can cause painful overpronation, or flattening out of the feet.
You may retain fluids, too, which can make your feet and ankles swell. It's important to wear comfortable, non-restricting shoes when you're pregnant. 
And be sure to put your feet up several times a day to prevent fatigue and swelling of the feet, legs, and ankles.""",
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
