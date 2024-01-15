// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ToDoctor extends StatelessWidget {
  const ToDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Lottie.asset("assets/animation_llv1w31o.json"),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
