import 'package:flutter/material.dart';
class ReactContainer extends StatelessWidget {
   ReactContainer({required this.text,required this.image});
String text;
String image;
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 80,
      decoration:BoxDecoration(color: Colors.white70,
          borderRadius: BorderRadius.circular(5))
      ,child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
         image,width: 20,height: 20,),
          Text(text,style: TextStyle(color: Colors.grey),)
        ]),);
  }
}
