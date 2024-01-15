// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, unnecessary_import, prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  final String cardName;
  final iconPath;

  SettingsCard({super.key, required this.cardName, this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: iconPath,
        title: Text(
          cardName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
