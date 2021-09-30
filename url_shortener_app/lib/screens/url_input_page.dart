import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_shortener_app/constants.dart';
import 'package:url_shortener_app/models/urls.dart';
import 'package:url_shortener_app/screens/url_output_page.dart';
import 'package:url_shortener_app/services/shortenedURL.dart';
import 'package:url_shortener_app/widgets/Button.dart';
import 'package:url_shortener_app/widgets/errorBox.dart';
import 'package:url_shortener_app/widgets/homebutton.dart';
import 'package:url_shortener_app/widgets/input_field.dart';

class URLinputPage extends StatefulWidget {
  static const id = 'url_input_page';

  @override
  _URLinputPageState createState() => _URLinputPageState();
}

class _URLinputPageState extends State<URLinputPage> {
  String urlToShorten = '';
  String alias = '';
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  bool isLoading = false;

  void getData() async {
    setState(() {
      isLoading = true;
    });
    ShortURL urlModel = ShortURL(urlToShorten: urlToShorten, alias: alias);
    try {
      final urlData = await urlModel.getShortURL();
      print(urlData);
      // if (urlData.errors[0] == null) {
      String urlShortened = urlData['data']['tiny_url'];
      print(urlShortened);
      Provider.of<Urls>(context, listen: false).add(urlShortened);
      Navigator.pushNamed(
        context,
        URLoutputPage.id,
        arguments: urlShortened,
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) {
          return ErrorBox(
            buttonMessage: 'Try Again',
            errorMessage: e.toString(),
          );
        },
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
    // } else {
    // showDialog(
    //   context: context,
    //   builder: (context) {
    //     return ErrorBox(
    //       buttonMessage: 'Try Again',
    //       errorMessage: urlData.errors[0],
    //     );
    //   },
    // );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: HomeButton(),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
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
                        myController1.clear();
                        myController2.clear();
                        (urlToShorten == '')
                            ? showDialog(
                                context: context,
                                builder: (context) {
                                  return ErrorBox(
                                    errorMessage: 'URL field is required',
                                    buttonMessage: 'Okay',
                                  );
                                },
                              )
                            : getData();
                      },
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

/*
  showDialog(
    context: context,
    builder: (context) {
      return ErrorBox();
    },
  );         
*/