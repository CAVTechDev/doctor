// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:doctor/widgets/navbar_roots_patient.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ConnectedPage extends StatelessWidget {
  const ConnectedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Lottie.asset("assets/animation_llvwpmn0.json"),
            SizedBox(
              height: 50,
            ),
            Text(
              "You are now Connected",
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return NavBarRootsPatient();
                  })));
                },
                child: Text(
                  "Return Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
