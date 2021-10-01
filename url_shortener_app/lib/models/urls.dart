import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    return [..._urls.reversed];
  }

  void deleteUrl(String i) {
    _urls.remove(i);
    notifyListeners();
  }

  void setList() async {
    int count = 0;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    for (int i = 0; i < _urls.length; i++) {
      final urlData = _urls[i];
      preferences.setString('url$i', urlData);
      count++;
    }
    preferences.setInt('length', count);
  }

  void getList() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int length = preferences.getInt('length') ?? 0;
    for (int i = 0; i < length; i++) {
      String urlData = preferences.getString('url$i') ?? '';
      _urls.add(urlData);
    }
    notifyListeners();
  }

  void deleteURLperm(int index) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int count = preferences.getInt('length') ?? 0;
    preferences.remove('url$index');
    count--;
    preferences.setInt('length', count);
    notifyListeners();
  }
}
