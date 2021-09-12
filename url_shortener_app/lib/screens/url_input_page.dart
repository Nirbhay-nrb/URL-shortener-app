import 'package:flutter/material.dart';
import 'package:url_shortener_app/constants.dart';
import 'package:url_shortener_app/widgets/Button.dart';
import 'package:url_shortener_app/widgets/homebutton.dart';
import 'package:url_shortener_app/widgets/input_field.dart';

class URLinputPage extends StatelessWidget {
  static const id = 'url_input_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: HomeButton(),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Enter URL',
                style: kHeadings,
              ),
              InputField(
                hintText: 'Enter your URL',
                onChanged: (value) {},
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Alias',
                style: kHeadings,
              ),
              InputField(
                hintText: 'Enter Alias',
                onChanged: (value) {},
              ),
              SizedBox(
                height: 45,
              ),
              Button(
                text: 'Create',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
