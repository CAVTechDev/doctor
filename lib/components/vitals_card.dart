// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class VitalsCard extends StatelessWidget {
  final iconPath;
  final String vitalName1;
  final String vitalName2;
  final String paramter;
  final String unitParameter;

  final color;
  final style;

  VitalsCard(
      {super.key,
      required this.iconPath,
      required this.vitalName1,
      required this.vitalName2,
      required this.paramter,
      required this.unitParameter,
      this.color,
      this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 150,
      padding: EdgeInsets.only(top: 20, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(iconPath, scale: 15, color: color),
          SizedBox(
            height: 10,
          ),
          Text(
            vitalName1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            vitalName2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            paramter,
            style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            unitParameter,
            style: style,
          ),
        ],
      ),
    );
  }
}
