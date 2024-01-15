// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:doctor/components/itms_card.dart';
import 'package:doctor/pages/patient_pages/tips_pages/body%20care/exercise.dart';
import 'package:doctor/pages/patient_pages/tips_pages/body%20care/kegels.dart';
import 'package:doctor/pages/patient_pages/tips_pages/healthy%20diet/fruits.dart';
import 'package:doctor/pages/patient_pages/tips_pages/healthy%20diet/vitamin.dart';
import 'package:doctor/pages/patient_pages/tips_pages/learn%20more/educate.dart';
import 'package:doctor/pages/patient_pages/tips_pages/learn%20more/friends.dart';
import 'package:doctor/pages/patient_pages/tips_pages/learn%20more/ppd_page.dart';
import 'package:doctor/pages/patient_pages/tips_pages/planning%20pregnancy/antenatal.dart';
import 'package:doctor/pages/patient_pages/tips_pages/planning%20pregnancy/birth_plan.dart';
import 'package:doctor/pages/patient_pages/tips_pages/planning%20pregnancy/travels.dart';

import 'package:doctor/pages/patient_pages/tips_pages/body%20care/shopping.dart';
import 'package:doctor/pages/patient_pages/tips_pages/body%20care/spa.dart';
import 'package:doctor/pages/patient_pages/tips_pages/healthy%20diet/toxins.dart';
import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/sign.jpg"),
                        radius: 25,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        width: 240,
                        height: 45,
                        child: Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Articles, Videos, Audio and more",
                              hintStyle: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey.shade500,
                                  textBaseline: TextBaseline.ideographic),
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.notifications_active,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Trending Now",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return AntenatalPage();
                          })));
                        },
                        child: TipCard(
                          imgPath: "tipimags/antenatal.jpg",
                          tipName: "Know your Antenatal Check-Up Schedule",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return ToxinsPage();
                          })));
                        },
                        child: TipCard(
                          imgPath: "tipimags/toxins.jpg",
                          tipName: "Eliminating Toxins",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ShoppingPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/shopping.jpg",
                          tipName: "Shopping the Right Way",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PPDPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/educate2.jpg",
                          tipName: "Learn about Post Partum Depression",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return KegelsPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/kegels.jpg",
                          tipName: "Practicing Kegels",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SpaPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/spa.jpg",
                          tipName: "Rethink your Spa Style",
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Planning Pregnancy",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BirthPlanPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/writing1.jpg",
                          tipName: "Writing a Birth Plan",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return TravelsPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/traveling.jpg",
                          tipName: "Travel Smart",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TipCard(
                        imgPath: "tipimags/cravings.jpg",
                        tipName: "Saying Yes/No to Cravings",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TipCard(
                        imgPath: "tipimags/contactdoctor.jpg",
                        tipName: "Know when to call your Doctor",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AntenatalPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/antenatal.jpg",
                          tipName: "Know your Antenatal Check-up Schedule",
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Healthy Diet and Intakes",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return VitaminsPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/prenatalvitamin.jpg",
                          tipName: "Taking Prenatal Vitamin",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FruitsPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/fruits.jpg",
                          tipName: "Recharge with fruits",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return ToxinsPage();
                          })));
                        },
                        child: TipCard(
                          imgPath: "tipimags/toxins.jpg",
                          tipName: "Eliminating Toxins",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TipCard(
                        imgPath: "tipimags/drugs.jpg",
                        tipName: "Checking your Medications",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TipCard(
                        imgPath:
                            "tipimags/medium-shot-pregnant-woman-hydrating.jpg",
                        tipName: "Drinking More Water",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TipCard(
                        imgPath: "tipimags/friends2.jpg",
                        tipName: "Eating Folate Rich Foods",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TipCard(
                        imgPath: "tipimags/fish.jpg",
                        tipName: "Eating Fish Foods",
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Body Care",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ExercisePage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/exercise1.jpg",
                          tipName: "Recommeded Exercises",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return KegelsPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/kegels.jpg",
                          tipName: "Practicing Kegels",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ShoppingPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/shopping.jpg",
                          tipName: "Shopping the Right Way",
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TipCard(
                        imgPath: "tipimags/chores.jpg",
                        tipName: "Changing up chores",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SpaPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/spa.jpg",
                          tipName: "Rethink your Spa Style",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TipCard(
                        imgPath: "tipimags/sunscreen.jpg",
                        tipName: "Wear Sunscreen",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TipCard(
                        imgPath: "tipimags/resting.jpg",
                        tipName: "Getting Enough rest and sleep",
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Learn more and Connect",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return EducatePage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/educate.jpg",
                          tipName: "Educating Yourself More",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FriendsPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/friends.jpg",
                          tipName: "Making Friends and Connecting with People",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PPDPage();
                          }));
                        },
                        child: TipCard(
                          imgPath: "tipimags/educate2.jpg",
                          tipName: "Learn about Post Partum Depression",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TipCard(
                        imgPath: "tipimags/vaccines.jpg",
                        tipName: "Learn More about Vaccines",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
