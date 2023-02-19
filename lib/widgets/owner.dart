import 'package:flutter/material.dart';
class Owner extends StatelessWidget {
  const Owner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return       Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 3, vertical: 7),
          width: 70,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage('assets/images/person2.jpg'))),
        ),
        Positioned(
          top: 7,
          left: 6,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.person,
              color: Colors.white,size: 10,
            ),
          ),
        ),


        Positioned(
            left: 15,
            bottom: 10,
            child: Text('Owner',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
      ],
    );
  }
}
