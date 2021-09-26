import 'package:flutter/material.dart';
import 'package:url_shortener_app/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_shortener_app/screens/homepage.dart';

class LoadingScreen extends StatefulWidget {
  static const String id = 'loading_screen';
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void navigateToNextScreen() async {
    await Future.delayed(Duration(milliseconds: 3200));
    Navigator.pushNamed(context, HomePage.id);
  }

  @override
  void initState() {
    navigateToNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: 30,
            left: 10,
            right: 10,
            bottom: 10,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 0,
                color: Colors.white,
                child: TextLiquidFill(
                  text: 'URL\nShortener',
                  textAlign: TextAlign.center,
                  waveColor: kButtonColor,
                  boxBackgroundColor: kBackgroundColor,
                  textStyle: kHomePageTitle,
                  loadDuration: Duration(seconds: 2),
                ),
              ),
              Text(
                'Create your own custom URLs',
                style: kHomePageCaption,
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, HomePage.id);
                  },
                  child: Image(
                    image: AssetImage('assets/homepage.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
