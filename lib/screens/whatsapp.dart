import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/custom_message.dart';
import '../widgets/custom_textfield.dart';

class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appbar(),
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/person1.jpg'),
                ),
              ),
              SizedBox(width: 5),
              CustomMessage(text: 'This Is My First Message' )
            ],
          ),
          Row(children: [
            SizedBox(width: 15,),
            CustomMessage(text: 'This Is My Second Message' ),
            SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/person2.jpg'),
              ),
            ),

          ],),
          Spacer(),
          Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                    perfx: Icon(Icons.emoji_emotions_outlined,color: Colors.white,),
                    sufx: Icon(Icons.attach_file,color: Colors.white,),
                    hintText: 'Type a Message',
                ),
              ),
            ),
            CircleAvatar(
              radius: 30,backgroundColor: Colors.black,
                child: Icon(Icons.mic,color: Colors.white,))
          ],)
        ]),
      ),
    );
  }
}
