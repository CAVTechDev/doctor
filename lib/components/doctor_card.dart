// ignore_for_file: prefer_const_literals_to_create_immutables,, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables
// prefer_const_constructors, avoid_unnecessary_containers,
// prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables,

import 'package:flutter/material.dart';

class DoctorsCard extends StatelessWidget {
  final doctorImagePath;
  final String doctorRating;
  final String doctorName;
  final String professionExp;

  DoctorsCard(
      {super.key,
      required this.doctorImagePath,
      required this.doctorRating,
      required this.doctorName,
      required this.professionExp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue.shade400),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              //picture of the doctor
              ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset(
                  doctorImagePath,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //rating
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade700,
                  ),
                  Text(
                    doctorRating,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),

              //Doctors Name
              Text(
                doctorName,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //Profession and Years of Experience
              Text(professionExp)
            ],
          ),
        ),
      ),
    );
  }
}
