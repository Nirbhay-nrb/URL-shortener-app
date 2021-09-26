import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:url_shortener_app/models/urls.dart';

import 'listButton.dart';

class ListOfURLs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> listOfUrls = Provider.of<Urls>(context).getListOfUrls;
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            listOfUrls[index],
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: GestureDetector(
                  onTap: () {
                    final data = ClipboardData(text: listOfUrls[index]);
                    Clipboard.setData(data);
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
