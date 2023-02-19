import 'package:assignment_1/widgets/owner.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_post.dart';
import '../widgets/react_container.dart';

class HomeScreen extends StatelessWidget {
  String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(
              width: double.infinity,
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Owner(),
                itemCount: 15,
              ),
            ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index)=> CustomPost(),itemCount: 20,scrollDirection: Axis.vertical,)

       //      Padding(
       //        padding: const EdgeInsets.all(8.0),
       //        child: Row(
       //          children: [
       //            CircleAvatar(
       //              backgroundColor: Colors.black,
       //              child: Icon(
       //                Icons.person,
       //                color: Colors.white,
       //                size: 20,
       //              ),
       //            ),
       //            SizedBox(width: 15,),
       //            Column(children: [
       //              Text('Owner',style: TextStyle(fontWeight: FontWeight.bold),),Row(children: [Text('3h '),Icon(Icons.public,size: 15,)],)
       //            ],)
       //          ],
       //        ),
       //      ),
       //      Padding(
       //        padding: const EdgeInsets.all(10.0),
       //        child: Text('My Post',style: TextStyle(fontSize: 25),),
       //      ),
       //          Padding(
       //            padding: const EdgeInsets.all(8.0),
       //            child: Row(children: [
       //              Text('100  '),
       //              Image.asset('assets/images/like.jpg',width: 40,
       //                height: 40,),
       //              Spacer(),
       //              Text('100 comments')
       //            ],),
       //
       //          ),
       //          Divider(color: Colors.grey,thickness: 1.5,),
       //          Row(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
       //            children: [
       //            ReactContainer(text: 'Like',image: 'assets/images/singleLike.jpg',),
       //            ReactContainer(image: 'assets/images/comment.jpg',text: 'comment'),
       //            ReactContainer(text: 'Like',image: 'assets/images/share.png',),
       //
       //          ],)

          ]),
        ));
  }
}
