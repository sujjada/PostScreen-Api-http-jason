import 'package:flutter/material.dart';
import 'package:pp_screen/counter_app.dart';
import 'package:pp_screen/textfield.dart';
import 'package:pp_screen/userscreen.dart';
//import 'package:pp_screen/bmi.dart';
//import 'package:pp_screen/bmi.dart/bmi_screen.dart';
//import 'package:pp_screen/button_screen.dart';
//import 'package:pp_screen/different_button.dart';
//import 'package:pp_screen/home.dart';
//import 'package:pp_screen/textfieldScreen.dart';
//import 'package:pp_screen/different_button.dart
//import 'package:pp_screen/screen_one.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Demo App",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   fontFamily: "Lobster",
      // ),
      // home: HomePage()
      // home: ProfileScreen(),
      // home: ContactList(),
      home: Postscreen(),
    ),
  );
}
