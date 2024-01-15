// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final doctorImagePath;
  final String doctorName;

  ReviewCard(
      {super.key, required this.doctorImagePath, required this.doctorName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2,
            )
          ]),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.4,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(doctorImagePath),
              ),
              title: Text(
                doctorName,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("1 Day ago"),
            )
          ],
        ),
      ),
    );
  }
}
