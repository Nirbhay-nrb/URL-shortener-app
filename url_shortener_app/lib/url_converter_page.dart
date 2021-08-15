import 'package:flutter/material.dart';

class urlShortenerPage extends StatefulWidget {
  static const String id = 'url_converter_page';
  @override
  _urlShortenerPageState createState() => _urlShortenerPageState();
}

class _urlShortenerPageState extends State<urlShortenerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Enter URL:'),
          TextField(
            onChanged: (value) {},
          ),
          MaterialButton(
            onPressed: () {},
            child: Text('Shorten URL'),
          ),
          Container(
            child: Text('Result Url'),
          ),
        ],
      ),
    );
  }
}
