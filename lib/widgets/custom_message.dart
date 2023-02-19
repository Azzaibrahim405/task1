import 'package:flutter/material.dart';
class CustomMessage extends StatelessWidget {

   CustomMessage({required this.text});
String text;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 10,right: 15),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border(
              top: BorderSide(
                color: Colors.white,
              ),
              left: BorderSide(
                color: Colors.white,),
              bottom: BorderSide(
                color: Colors.white,),
              right: BorderSide(
                  color: Colors.white),
            )),
        child: Center(
            child: Text(
             text,
              style: TextStyle(color: Colors.white,fontSize: 13),
            )),
      ),
    );
  }
}
