import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
     required this.perfx,required this.sufx,
    required this.hintText,
    this.onChange,
  });
Icon perfx;
Icon sufx;
  String? hintText;
  Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      onChanged: onChange,
      decoration: InputDecoration(
        prefixIcon: perfx,
          suffixIcon:sufx ,
          hintStyle: TextStyle(color: Colors.white),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Colors.white,
              ))),
    );
  }
}
