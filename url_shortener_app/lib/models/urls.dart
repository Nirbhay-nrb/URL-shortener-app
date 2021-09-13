import 'package:flutter/foundation.dart';

class Urls extends ChangeNotifier {
  List<String> _urls = [
    'url1',
    'url2',
    'url3',
  ];

  void add(String url) {
    _urls.add(url);
    notifyListeners();
  }

  List<String> get getListOfUrls {
    return [..._urls];
  }

  void deleteUrl(String i) {
    _urls.remove(i);
    notifyListeners();
  }
}
