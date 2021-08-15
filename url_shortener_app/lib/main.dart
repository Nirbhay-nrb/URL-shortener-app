import 'package:flutter/material.dart';
import 'url_converter_page.dart';

void main() {
  runApp(urlShortener());
}

class urlShortener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: urlShortenerPage.id,
      routes: {
        urlShortenerPage.id: (ctx) => urlShortenerPage(),
      },
    );
  }
}
