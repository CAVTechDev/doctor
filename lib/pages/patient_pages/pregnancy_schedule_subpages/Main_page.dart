// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:doctor/components/settings_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPregPage extends StatelessWidget {
  const MainPregPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,
                ),
                child: Center(
                  child: Text(
                    "Week 14",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 300,
                width: 500,
                padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 7,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    SettingsCard(
                      cardName: "Antenatal Day",
                      iconPath: Icon(CupertinoIcons.heart_solid),
                    ),
                    Divider(
                      color: Colors.black26,
                      thickness: 0.9,
                    ),
                    SettingsCard(
                      cardName: "Morning Exercise",
                      iconPath: Icon(CupertinoIcons.heart_solid),
                    ),
                    Divider(
                      color: Colors.black26,
                      thickness: 0.9,
                    ),
                    SettingsCard(
                      cardName: "Liquid Flush",
                      iconPath: Icon(CupertinoIcons.heart_solid),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
