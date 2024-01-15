// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:doctor/pages/patient_pages/pregnancy_schedule_subpages/Main_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SchedulePage extends StatelessWidget {
  final DayController = TextEditingController();

  SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blue,
        child: Column(
          children: [
            SizedBox(height: 100),
            Lottie.asset("assets/animation_llwfjdcb.json"),
            SizedBox(height: 50),
            Text(
              "Set Current Week of Pregnancy",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: DayController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    hintText: "Type in Current Week of Pregnancy",
                  ),
                  obscureText: false,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return MainPregPage();
                    })));
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
