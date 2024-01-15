// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:doctor/pages/login_pages/login_page_P.dart';
import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return LogInPatient();
                      })));
                    },
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(padding: EdgeInsets.all(15)),
            Image.asset("images/welcome3.jpg"),
            SizedBox(
              height: 50,
            ),
            Text(
              "All Certified Professionals in One App",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 35,
                wordSpacing: 2,
                letterSpacing: 1,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
