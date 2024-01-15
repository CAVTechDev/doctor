// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:doctor/components/vitals_card.dart';

import 'package:flutter/material.dart';

import '../../../widgets/navbar_roots_patient.dart';

class CheckVitals extends StatelessWidget {
  const CheckVitals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return NavBarRootsPatient();
                      })));
                    },
                    child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300),
                        child: Icon(Icons.arrow_back_ios)),
                  ),
                  Text(
                    "Vitals Dashboard",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.notifications_active,
                    color: Colors.grey.shade500,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              minVerticalPadding: 20,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/sign.jpg"),
              ),
              title: Text(
                "Oreoluwa Akanbi",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("Same Global Estate, Lokogama, Abuja"),
              subtitleTextStyle:
                  TextStyle(color: Colors.grey.shade100, fontSize: 13),
              minLeadingWidth: 10,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.35,
              width: double.infinity,
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          VitalsCard(
                              iconPath: "icons/temperature.png",
                              vitalName1: "Body",
                              vitalName2: "Temperature",
                              paramter: "36.5",
                              unitParameter: "Temp in 0C",
                              color: Colors.red,
                              style:
                                  TextStyle(color: Colors.red, fontSize: 13)),
                          SizedBox(width: 20),
                          VitalsCard(
                            iconPath: "icons/oxygen-saturation.png",
                            vitalName1: "Oxygen",
                            vitalName2: "Saturation",
                            paramter: "98/132",
                            unitParameter: "Saturation in P",
                            color: Colors.blue,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          VitalsCard(
                              iconPath: "icons/drop.png",
                              vitalName1: "Environmental",
                              vitalName2: "Humidity",
                              paramter: "112",
                              unitParameter: "Hum in mmHG",
                              color: Colors.green,
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 13,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          VitalsCard(
                            iconPath: "icons/cardiogram.png",
                            vitalName1: "Heart",
                            vitalName2: "Rate",
                            paramter: "115",
                            color: Colors.purple.shade600,
                            unitParameter: "HR in BPM",
                            style: TextStyle(
                              color: Colors.purple.shade600,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          VitalsCard(
                            iconPath: "icons/body-scale.png",
                            vitalName1: "Body",
                            vitalName2: "Weight",
                            paramter: "75",
                            unitParameter: "Weight in KG",
                            color: Colors.amber.shade600,
                            style: TextStyle(
                              color: Colors.amber.shade600,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          VitalsCard(
                              iconPath: "icons/height.png",
                              vitalName1: "Body",
                              vitalName2: "Height",
                              paramter: "177",
                              color: Colors.blue..shade300,
                              unitParameter: "Height in CM",
                              style: TextStyle(
                                color: Colors.blue.shade300,
                                fontSize: 13,
                              )),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
