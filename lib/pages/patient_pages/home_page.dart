// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_import

import 'package:doctor/components/category_card.dart';
import 'package:doctor/components/doctor_card.dart';
import 'package:doctor/pages/patient_pages/home_subpages/doctors_info.dart';
import 'package:doctor/pages/patient_pages/home_subpages/doctors_list.dart';
import 'package:doctor/pages/patient_pages/home_subpages/medical_form.dart';
import 'package:doctor/pages/patient_pages/home_subpages/medical_record.dart';
import 'package:doctor/pages/patient_pages/home_subpages/wait_vitals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';

class HomePatient extends StatelessWidget {
  const HomePatient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello',
                          style: TextStyle(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Oreoluwa",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ],
                    ),

                    //profile picture

                    Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadiusDirectional.circular(15)),
                        child: Icon(Icons.person_3_rounded)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //medical card and how do you feel
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(22),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      //animation or picture
                      Container(
                        height: 130,
                        width: 150,
                        child: Lottie.asset("assets/animation_lltpenam.json"),
                      ),

                      SizedBox(
                        width: 20,
                      ),
                      //how do you feel plus button
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "How do you feel?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Fill out your medical card right now",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MedicalForm();
                                }));
                              },
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return MedicalFormPage();
                                  }));
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.purple.shade300,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Center(
                                    child: Text(
                                      "Get Started",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search_rounded),
                        hintText: "How can we help you?",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              //horizontal list view , categories of doctors
              Container(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryCard(
                      iconImagePath: "icons/gynecologist.png",
                      categoryName: "Gynecologist",
                    ),
                    CategoryCard(
                      iconImagePath: "icons/therapist.png",
                      categoryName: "Therapist",
                    ),
                    CategoryCard(
                      iconImagePath: "icons/dentist.png",
                      categoryName: "Dentist",
                    ),
                    CategoryCard(
                      iconImagePath: "icons/surgeon.png",
                      categoryName: "Surgeon",
                    ),
                    CategoryCard(
                      iconImagePath: "icons/dermatologist.png",
                      categoryName: "Dermatologist",
                    ),
                    CategoryCard(
                      iconImagePath: "icons/optometrist.png",
                      categoryName: "Optometrist",
                    ),
                    CategoryCard(
                      iconImagePath: "icons/medical.png",
                      categoryName: "ENT",
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Doctors List",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DoctorsList();
                        }));
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DoctorsInfo();
                      }));
                    },
                    child: DoctorsCard(
                      doctorImagePath: "images/doctor.jpg",
                      doctorRating: "4.9",
                      doctorName: "Dr. Bishop Enim",
                      professionExp: "Gynecologist, 7 y.e",
                    ),
                  ),
                  DoctorsCard(
                    doctorImagePath: "images/doctor2.jpg",
                    doctorRating: "4.9",
                    doctorName: "Dr. Harry Bachelor",
                    professionExp: "Therapist, 1 y.e",
                  ),
                  DoctorsCard(
                    doctorImagePath: "images/doctor3.jpg",
                    doctorRating: "4.8",
                    doctorName: "Dr. Williams Akinde",
                    professionExp: "Gynecologist, 4 y.e",
                  ),
                ],
              )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return WaitVitals();
                });
          },
          child: Icon(Icons.monitor_heart),
        ));
  }
}
