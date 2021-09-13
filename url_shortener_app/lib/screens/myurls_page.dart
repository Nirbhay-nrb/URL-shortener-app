import 'package:flutter/material.dart';
import 'package:url_shortener_app/constants.dart';
import 'package:url_shortener_app/widgets/homebutton.dart';
import 'package:url_shortener_app/widgets/listview_builder.dart';

class MyUrls extends StatelessWidget {
  static const id = 'myurls_page';
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
              Text(
                'My URLs',
                style: kHeadings,
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
