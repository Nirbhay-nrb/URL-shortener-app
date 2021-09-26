import 'package:flutter/material.dart';

import '../constants.dart';

class ListButton extends StatelessWidget {
  final IconData icon;
  ListButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: kBackgroundColor,
      child: Icon(
        icon,
        color: Colors.black54,
        size: 24,
      ),
    );
  }
}
