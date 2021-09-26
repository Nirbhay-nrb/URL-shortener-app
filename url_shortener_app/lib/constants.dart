import 'package:flutter/material.dart';

final kHomePageTitle = TextStyle(
  color: Color(0xFF2B54D5),
  fontSize: 75,
  fontWeight: FontWeight.w700,
  fontFamily: 'Satisfy',
);
final kHeadings = TextStyle(
  color: Color(0xFF2B54D5),
  fontSize: 60,
  fontWeight: FontWeight.w700,
  fontFamily: 'Satisfy',
);
final kHomePageCaption = TextStyle(
  color: Color(0xFF2B54D5),
  fontSize: 30,
  fontWeight: FontWeight.bold,
  fontFamily: 'AkayaKanadaka',
);

final kBackgroundColor = Color(0xFFD4DEDA);
final kButtonColor = Color(0xFF2B54D5);

final kDisplayTextFieldDecoration = InputDecoration(
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
);
