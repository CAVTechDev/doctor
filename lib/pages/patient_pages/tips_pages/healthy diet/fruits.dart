// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FruitsPage extends StatelessWidget {
  const FruitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Recharge With Fruits",
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
            Image.asset("tipimags/fruits.jpg"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                """
Most doctors recommend limiting caffeine during pregnancy, since it can have harmful effects on you and the baby.
Cutting back can be tough, though, especially when you're used to your morning java.
For a quick pick-me-up, try nibbling on some fruit.
"The natural sugars in fruits like bananas and apples can help lift energy levels," says registered dietitian Frances Largeman-Roth.
""",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  wordSpacing: 2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
