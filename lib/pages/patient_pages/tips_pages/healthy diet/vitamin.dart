// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class VitaminsPage extends StatelessWidget {
  const VitaminsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WTakin Prenatal Vitamins",
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
            Image.asset("tipimags/prenatalvitamin.jpg"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text("""
It's smart to start taking prenatal vitamins as soon as you know you're pregnant. 
In fact, many experts recommend taking them when you start trying to conceive. 
This is because your baby's neural tube, which becomes the brain and spinal cord, 
develops within the first month of pregnancy, so it's important you get essential nutrients—like folate, calcium, and iron—from the very start  

Prenatal vitamins are available over the counter at most drug stores, or you can get them by prescription from a doctor. If taking them makes you feel queasy,
try taking them at night or with a light snack. Chewing gum or sucking on hard candy afterward can help, too.
"""),
            )
          ],
        ),
      ),
    );
  }
}
