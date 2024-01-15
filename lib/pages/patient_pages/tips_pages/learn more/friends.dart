// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Making Friends and Connecting With People",
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
            Image.asset("tipimags/friends.jpg"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                """
Find ways to meet other pregnant people, whether that's through prenatal yoga, a childbirth class, a neighborhood parents group, or an online parenting forum.
The support, resources, and camaraderie from others who are in the same boat as you can be crucial for getting through the ups and downs of pregnancy.
"These are good connections after you have the baby, too," said Dr. Miller.
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
