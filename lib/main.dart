import 'package:assignment_1/screens/whatsapp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Assignment1());
}

class Assignment1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: WhatsAppScreen(),
    );

}}
