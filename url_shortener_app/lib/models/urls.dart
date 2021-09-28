import 'package:flutter/foundation.dart';

class Urls extends ChangeNotifier {
  List<String> _urls = [];

  void add(String url) {
    for (int i = 0; i < _urls.length; i++) {
      if (_urls[i] == url) {
        return;
      }
    }
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
