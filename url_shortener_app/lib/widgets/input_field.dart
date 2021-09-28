import 'package:flutter/material.dart';

import '../constants.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final Function onChanged;
  final TextEditingController controller;
  InputField({this.hintText = '', this.onChanged, this.controller});
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      cursorColor: kButtonColor,
      style: TextStyle(
        color: Colors.black,
      ),
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: kButtonColor, width: 1)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
