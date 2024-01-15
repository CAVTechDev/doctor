// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:doctor/pages/patient_pages/home_page.dart';
import 'package:doctor/pages/patient_pages/messaging_screen.dart';
import 'package:doctor/pages/patient_pages/pregnancy_schedule.dart';
import 'package:doctor/pages/patient_pages/setting_screen.dart';
import 'package:doctor/pages/patient_pages/tips_information_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarRootsPatient extends StatefulWidget {
  const NavBarRootsPatient({super.key});

  @override
  State<NavBarRootsPatient> createState() => _NavBarRootsPatientState();
}

class _NavBarRootsPatientState extends State<NavBarRootsPatient> {
  int _selectedIndex = 0;
  final _screens = [
    //homescreen

    HomePatient(),
    //pregnancy scehduling screen
    SchedulePage(),

    //Messaging Screen
    MessagingScreen(),

    //Tips and Information Screen
    TipsScreen(),

    //Settings screen
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.grey.shade500,
            unselectedItemColor: Colors.blue,
            selectedLabelStyle:
                TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              //HomeButton
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),

              //Pregnancy Data and Scheduling
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.calendar_today), label: "Schedule"),

              //Messaging Screen
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chat_bubble_text),
                  label: "Message"),

              //Tips and Information Screen
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.info_circle_fill), label: "Tips"),

              //Settings Button
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings_solid), label: "Settings"),
            ]),
      ),
    );
  }
}
