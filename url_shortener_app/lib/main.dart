import 'package:flutter/material.dart';
import 'package:url_shortener_app/screens/homepage.dart';
import 'package:url_shortener_app/screens/loading_screen.dart';
import 'package:url_shortener_app/screens/url_input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoadingScreen.id,
      routes: {
        LoadingScreen.id: (ctx) => LoadingScreen(),
        HomePage.id: (ctx) => HomePage(),
        URLinputPage.id: (ctx) => URLinputPage(),
      },
    );
  }
}
