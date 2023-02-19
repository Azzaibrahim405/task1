import 'package:assignment_1/screens/facebook.dart';
import 'package:assignment_1/screens/home.dart';
import 'package:assignment_1/screens/whatsapp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Assignment1());
}

class Assignment1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen().id:(context)=>HomeScreen(),
        FacebookScreen().id:(context)=>FacebookScreen()
      },
      debugShowCheckedModeBanner:false,
    initialRoute:FacebookScreen().id,
    );

}}
