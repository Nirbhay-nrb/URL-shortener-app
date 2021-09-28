import 'package:flutter/material.dart';

import '../constants.dart';

class Button extends StatelessWidget {
  final Function onPressed;
  final String text;
  Button({this.onPressed, this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: MaterialButton(
        minWidth: 180,
        height: 75,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        color: kButtonColor,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'AkayaKanadaka',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
