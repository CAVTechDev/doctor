// ignore_for_file: prefer_const_constructors

import 'package:doctor/pages/patient_pages/home_subpages/submiitted..dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MedicalFormPage extends StatefulWidget {
  const MedicalFormPage({super.key});

  @override
  State<MedicalFormPage> createState() => _MedicalFormPageState();
}

class _MedicalFormPageState extends State<MedicalFormPage> {
  List conditions = [
    "Any Extreme Vomiting?",
    "Vaginal Bleeding",
    "Headache",
    "Abdominal Pain",
    "Chills or High Fever",
    "Watery Discharge",
    "Painful Urination",
    "Itching",
    "Lack of Fetal Movement",
    "Leg Pain",
  ];

  List<bool> checkboxValues = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Medical Form",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: checkboxValues.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(conditions[index]),
                  trailing: Checkbox(
                    value: checkboxValues[index],
                    onChanged: (newValue) {
                      setState(() {
                        checkboxValues[index] = newValue!;
                      });
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SubmittedMaterialPage();
                  }));
                },
                child: Text("Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )))
          ],
        ),
      ),
    );
  }
}
