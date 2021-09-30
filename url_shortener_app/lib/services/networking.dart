import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({this.url = '', this.alias = '', this.urlToShorten = ''});
  String url;
  String urlToShorten;
  String domain = 'tinyurl.com';
  String alias;

  Future getData() async {
    Map<String, String> body = {
      "url": "$urlToShorten",
      "domain": "$domain",
      "alias": alias == '' ? "" : "$alias"
    };
    final jsonString = json.encode(body);
    print(jsonString);
    try {
      final urlid = Uri.parse(url);
      http.Response response = await http.post(urlid,
          headers: {'Content-Type': 'application/json'}, body: jsonString);

      if (response.statusCode == 200) {
        print('body created');
        String data = response.body;
        return jsonDecode(data);
      } else {
        print(response.statusCode);
        print(response.body);
        final errorData = json.decode(response.body) as Map<String, dynamic>;
        final errorList = errorData['errors'];
        throw errorList[0];
      }
    } catch (e) {
      throw e;
    }
  }
}
