import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({required this.txt, this.ontap});

  String txt;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xff4E68A1),),
        child: Center(child: Text(txt,style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
