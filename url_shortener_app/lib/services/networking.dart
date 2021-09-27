import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({this.url, this.alias, this.domain, this.urlToShorten});
  String url;
  String urlToShorten;
  String domain = 'tinyurl.com';
  String alias = '';

  Future getData() async {
    final body = alias.isEmpty
        ? {"url": "$urlToShorten", "domain": "$domain"}
        : {"url": "$urlToShorten", "domain": "$domain", "alias": "$alias"};
    final jsonString = json.encode(body);
    final urlid = Uri.parse(url);
    http.Response response = await http.post(urlid, body: jsonString);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
