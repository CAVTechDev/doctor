// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TipCard extends StatelessWidget {
  final imgPath;
  final String tipName;

  TipCard({super.key, required this.imgPath, required this.tipName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 190,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
              imgPath,
            ),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 2,
            )
          ]),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,
            child: Container(
                padding: EdgeInsets.all(3),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Icon(
                  Icons.lock_outline,
                  color: Colors.grey.shade700,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 190, left: 10),
            child: Text(
              tipName,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 17,
                wordSpacing: 2,
              ),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
