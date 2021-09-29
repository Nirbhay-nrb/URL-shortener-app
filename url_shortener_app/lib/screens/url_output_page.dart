import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_shortener_app/constants.dart';
import 'package:url_shortener_app/screens/url_input_page.dart';
import 'package:url_shortener_app/widgets/Button.dart';
import 'package:url_shortener_app/widgets/homebutton.dart';

class URLoutputPage extends StatelessWidget {
  static const id = 'url_output_page';
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final String resultURL =
        ModalRoute.of(context)?.settings.arguments as String;
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
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        resultURL,
                        style: TextStyle(fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: <Widget>[
                  Button(
                    text: 'Copy',
                    onPressed: () {
                      final data = ClipboardData(text: resultURL);
                      Clipboard.setData(data);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
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
