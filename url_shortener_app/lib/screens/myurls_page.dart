import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_shortener_app/constants.dart';
import 'package:url_shortener_app/widgets/homebutton.dart';
import 'package:url_shortener_app/widgets/listview_builder.dart';

class MyUrls extends StatefulWidget {
  static const id = 'myurls_page';

  @override
  _MyUrlsState createState() => _MyUrlsState();
}

class _MyUrlsState extends State<MyUrls> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      floatingActionButton: HomeButton(),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'My URLs',
                  style: kHeadings,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: Container(
                  child: ListOfURLs(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
