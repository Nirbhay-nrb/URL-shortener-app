import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({this.url, this.alias, this.domain, this.urlToShorten});
  String url;
  String urlToShorten;
  String domain = 'tinyurl.com';
  String alias;

  Future getData() async {
    final body = {
      "url": "$urlToShorten",
      "domain": "$domain",
      "alias": "$alias"
    };
    print('url from network helper ==> $urlToShorten ==> $alias');
    final jsonString = json.encode(body);
    final urlid = Uri.parse(url);
    http.Response response = await http.post(urlid, body: jsonString);

    if (response.statusCode == 200) {
      print('body created');
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
      String data1 = response.body;
      print(response.body);
      var data2 = jsonDecode(data1);
      print(data2['errors']);
    }
  }
}
