import 'package:assignment_1/widgets/react_container.dart';
import 'package:flutter/material.dart';
class CustomPost extends StatelessWidget {
  const CustomPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              SizedBox(width: 15,),
              Column(children: [
                Text('Owner',style: TextStyle(fontWeight: FontWeight.bold),),Row(children: [Text('3h '),Icon(Icons.public,size: 15,)],)
              ],)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('My Post',style: TextStyle(fontSize: 25),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Text('100  '),
            Image.asset('assets/images/like.jpg',width: 40,
              height: 40,),
            Spacer(),
            Text('100 comments')
          ],),

        ),
        Divider(color: Colors.grey,thickness: 1.5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReactContainer(text: 'Like',image: 'assets/images/singleLike.jpg',),
            ReactContainer(image: 'assets/images/comment.jpg',text: 'comment'),
            ReactContainer(text: 'Like',image: 'assets/images/share.png',),

          ],)
      ]),
    );
  }
}
