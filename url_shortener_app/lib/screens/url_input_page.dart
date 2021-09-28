import 'package:flutter/material.dart';
import 'package:url_shortener_app/constants.dart';
import 'package:url_shortener_app/screens/url_output_page.dart';
import 'package:url_shortener_app/services/shortenedURL.dart';
import 'package:url_shortener_app/widgets/Button.dart';
import 'package:url_shortener_app/widgets/homebutton.dart';
import 'package:url_shortener_app/widgets/input_field.dart';

class URLinputPage extends StatefulWidget {
  static const id = 'url_input_page';

  @override
  _URLinputPageState createState() => _URLinputPageState();
}

class _URLinputPageState extends State<URLinputPage> {
  String urlToShorten;
  String alias;
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

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
                controller: myController1,
                hintText: 'Enter your URL',
                onChanged: (value) {
                  urlToShorten = value;
                },
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Alias',
                style: kHeadings,
              ),
              InputField(
                controller: myController2,
                hintText: 'Enter Alias : 5-30 letters',
                onChanged: (value) {
                  alias = value;
                },
              ),
              SizedBox(
                height: 45,
              ),
              Button(
                text: 'Create',
                onPressed: () async {
                  print(alias == null);
                  ShortURL urlModel =
                      ShortURL(urlToShorten: urlToShorten, alias: alias);
                  final urlData = await urlModel.getShortURL();
                  if (urlData == Null) {
                    print('null hai be');
                  }
                  myController1.clear();
                  myController2.clear();
                  if (urlData != Null) {
                    print('null nahi hai be');
                  }
                  String urlShortened = urlData['data']['tiny_url'];
                  print(urlShortened);
                  Navigator.pushNamed(
                    context,
                    URLoutputPage.id,
                    arguments: urlShortened,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
