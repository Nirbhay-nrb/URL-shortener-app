import 'package:flutter/material.dart';

import '../constants.dart';

class Button extends StatelessWidget {
  final Function onPressed;
  final String text;
  Button({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 200,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(20),
      elevation: 10,
      color: kButtonColor,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'AkayaKanadaka',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
