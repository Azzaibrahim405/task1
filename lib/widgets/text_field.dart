import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  String hint;
  String? Function(String?)? validate;
  CustomField({required this.hint,this.validate});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      decoration: InputDecoration(

          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey)),
    );
  }
}
