// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:doctor/pages/login_pages/login_page_P.dart';
import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

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
              height: 100,
              width: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                "images/welcome1.jpg",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Smart Healthcare for Pregnant Women",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
