// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor/components/settings_button.dart';
import 'package:doctor/pages/patient_pages/settings_subpages/device_id_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.0,
                width: double.infinity,
                padding: EdgeInsets.only(top: 30, left: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "GENERAL",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SettingsCard(
                          cardName: "Account",
                          iconPath: Icon(
                            CupertinoIcons.person,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SettingsCard(
                          cardName: "Notifications",
                          iconPath: Icon(
                            CupertinoIcons.bell,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SettingsCard(
                          cardName: "Billing and History",
                          iconPath: Icon(
                            CupertinoIcons.money_dollar_circle,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SettingsCard(
                          cardName: "Coupons",
                          iconPath: Icon(
                            CupertinoIcons.gift,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return DeviceIDPage();
                          })));
                        },
                        child: SettingsCard(
                          cardName: "SHFORP Device",
                          iconPath: Icon(
                            CupertinoIcons.device_laptop,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SettingsCard(
                          cardName: "Logout",
                          iconPath: Icon(
                            CupertinoIcons.square_arrow_right,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SettingsCard(
                          cardName: "Delete Account",
                          iconPath: Icon(
                            CupertinoIcons.delete,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text("FEEDBACK",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SettingsCard(
                          cardName: "Report a Bug",
                          iconPath: Icon(
                            Icons.warning_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SettingsCard(
                          cardName: "Send Feedback",
                          iconPath: Icon(
                            Icons.send_time_extension,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
