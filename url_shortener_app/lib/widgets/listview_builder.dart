import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_shortener_app/models/urls.dart';

import '../constants.dart';
import 'listButton.dart';

class ListOfURLs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> listOfUrls = Provider.of<Urls>(context).getListOfUrls;
    return listOfUrls.length == 0
        ? Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'No URLs yet',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Satisfy',
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Click on any URL to open it',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Satisfy',
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          )
        : ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: GestureDetector(
                  onTap: () async {
                    print('url opener initiatied');
                    if (await canLaunch(listOfUrls[index])) {
                      print('url opening succesful');
                      await launch(listOfUrls[index]);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(snackBar1);
                    }
                  },
                  child: Text(
                    listOfUrls[index],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                    ),
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 6),
                      child: GestureDetector(
                        onTap: () {
                          final data = ClipboardData(text: listOfUrls[index]);
                          Clipboard.setData(data);
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: ListButton(
                          icon: Icons.copy,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Provider.of<Urls>(context, listen: false)
                            .deleteUrl(listOfUrls[index]);
                        Provider.of<Urls>(context, listen: false)
                            .deleteURLperm(index);
                      },
                      child: ListButton(
                        icon: Icons.delete,
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: listOfUrls.length,
          );
  }
}
