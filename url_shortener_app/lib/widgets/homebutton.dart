import 'package:flutter/material.dart';
import 'package:url_shortener_app/screens/homepage.dart';

import '../constants.dart';

class HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kButtonColor,
      elevation: 10,
      child: Icon(
        Icons.home,
        size: 25,
      ),
      onPressed: () {
        Navigator.pushNamed(context, HomePage.id);
      },
    );
  }
}
