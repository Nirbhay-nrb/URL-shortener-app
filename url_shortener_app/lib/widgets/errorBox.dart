import 'package:flutter/material.dart';

import '../constants.dart';

class ErrorBox extends StatelessWidget {
  final String errorMessage;
  final String buttonMessage;
  ErrorBox({this.buttonMessage, this.errorMessage});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
      ),
      backgroundColor: kBackgroundColor,
      title: Text(
        errorMessage,
      ),
      actionsPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      actions: [
        MaterialButton(
          minWidth: 60,
          height: 40,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10,
          color: kButtonColor,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              buttonMessage,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
