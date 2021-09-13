import 'package:flutter/material.dart';
import 'package:url_shortener_app/constants.dart';
import 'package:url_shortener_app/screens/url_input_page.dart';
import 'package:url_shortener_app/widgets/Button.dart';
import 'package:url_shortener_app/widgets/homebutton.dart';

class URLoutputPage extends StatelessWidget {
  static const id = 'url_output_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      floatingActionButton: HomeButton(),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Your URL',
                style: kHeadings,
              ),
              TextField(
                enabled: false,
                maxLines: 2,
                decoration: kDisplayTextFieldDecoration,
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: <Widget>[
                  Button(
                    text: 'Copy',
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Button(
                    text: 'Make Another',
                    onPressed: () {
                      Navigator.pushNamed(context, URLinputPage.id);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
