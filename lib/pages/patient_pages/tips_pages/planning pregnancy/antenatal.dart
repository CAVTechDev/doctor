// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AntenatalPage extends StatelessWidget {
  const AntenatalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Knowing your Antenatal Check-Up Schedule",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
            child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("tipimags/antenatal3.jpg"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "What is Antenatal Care?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text("""
This is the care you receive while you're pregnant to make sure you and your baby are as well as possible.

The midwife or doctor providing your antenatal care will:

- Check the health of you and your baby
- Give you useful information to help you have a healthy pregnancy, including advice about healthy eating and exercise
- Discuss your options and choices for your care during pregnancy, labour and birth
         
                """),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Starting your Antenatal Care",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text("""
You can book an appointment with your GP or directly with your midwife as soon as you find out you're pregnant.
              
Your GP surgery or a children's centre can put you in touch with your nearest midwifery service.
              
You can find your nearest children's centre through your local council.
              
It's best to see a midwife or GP as early as possible to get the information you need about having a healthy pregnancy.
              
Some tests, such as screening for sickle cell and thalassaemia, should be done before you're 10 weeks pregnant.
              
If you have special health needs, your midwife, GP or obstetrician may take shared responsibility for your maternity care.
              
This means they'll all be involved in your care during pregnancy.
              
Let your midwife know if you have a disability that means you have special requirements for your antenatal appointments or for labour.
              """),
              )
            ],
          ),
        )));
  }
}
