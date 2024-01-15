// ignore_for_file: file_names, prefer_const_constructors

import 'package:doctor/pages/patient_pages/home_subpages/todoc.dart';
import 'package:doctor/widgets/navbar_roots_patient.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SubmittedMaterialPage extends StatelessWidget {
  const SubmittedMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 20),
          Lottie.asset("assets/animation_llwfjdcb.json"),
          SizedBox(height: 10),
          Text(
            "Your Medical Report will be collated",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NavBarRootsPatient();
                    }));
                  },
                  child: Text("Return Home")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ToDoctor();
                    }));
                  },
                  child: Text("To Doc"))
            ],
          )
        ],
      ),
    );
  }
}
