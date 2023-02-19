import 'package:assignment_1/screens/home.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_container.dart';
import '../widgets/text_field.dart';

class FacebookScreen extends StatelessWidget {
  String id = 'facebook';
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Spacer(
                flex: 9,
              ),
              Icon(
                Icons.facebook,
                color: Colors.white,
                size: 60,
              ),
              CustomField(
                  hint: 'Email or Phone',
                  validate: (data) {
                    if (data!.isEmpty) {
                      return 'please enter your email';
                    } else if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(data)) { return 'enter valid mail';}
                  }),
              SizedBox(
                height: 10,
              ),
              CustomField(
                validate: (data) {
                  if (data!.isEmpty) {
                    return 'please enter your password ';
                  }
                },
                hint: 'Password',
              ),
              SizedBox(
                height: 25,
              ),
              CustomContainer(
                  txt: 'LOGIN',
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, HomeScreen().id);
                    } else
                      null;
                  }),
              Spacer(
                flex: 9,
              ),
              // SizedBox(height: 80,),
              Text(
                'Sign Up For Facebook',
                style: TextStyle(color: Colors.white),
              ),
              // SizedBox(height: 20,),
              Spacer(
                flex: 1,
              ),
              Text(
                'Forget Password?',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
