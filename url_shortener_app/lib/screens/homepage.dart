import 'package:flutter/material.dart';
import 'package:url_shortener_app/constants.dart';
import 'package:url_shortener_app/widgets/Button.dart';

class HomePage extends StatelessWidget {
  static const id = 'homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: kHomePageTitle,
              ),
              SizedBox(
                height: 40,
              ),
              Button(
                text: 'Shorten URL',
                onPressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Button(
                text: 'My URLs',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
