import 'package:flutter/material.dart';
import 'package:flutter_application_2/FirstScreen.dart';
import 'package:flutter_application_2/FiveScreen.dart';
import 'package:flutter_application_2/FourScreen.dart';
import 'package:flutter_application_2/ThreeScreen.dart';
import 'package:flutter_application_2/secondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: FirstScreen(),// type of Buttom
      //home: ThreeScreen() // Button calculator and Expandad
     //home: FourSceen(),//SingleChildScrollView
      home: FiveScreen(),  //list view
      //home: SecondScreen() //task
    );
  }
}
