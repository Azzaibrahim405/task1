import 'package:flutter/material.dart';
 AppBar appbar()=>AppBar(
  leading: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/person.jpg'),
          ),
        ),
        // SizedBox(width: 10,),

      ]),
  title:   Text(
    'Person',
    style: TextStyle(color: Colors.white,fontSize: 20),
  ) ,
  backgroundColor: Colors.black,
  actions: [
    Icon(
      Icons.video_call,
      color: Colors.white,
    ),
    Icon(
      Icons.call,
      color: Colors.white,
    ),
    Icon(
      Icons.more_vert,
      color: Colors.white,
    )
  ],
);

// Container(
//   ),