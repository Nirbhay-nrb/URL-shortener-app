import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_shortener_app/models/urls.dart';

class ListOfURLs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> listOfUrls = Provider.of<Urls>(context).getListOfUrls;
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          onLongPress: () {
            Provider.of<Urls>(context, listen: false)
                .deleteUrl(listOfUrls[index]);
          },
          title: Text(
            listOfUrls[index],
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          trailing: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.copy,
              )),
        );
      },
      itemCount: listOfUrls.length,
    );
  }
}
