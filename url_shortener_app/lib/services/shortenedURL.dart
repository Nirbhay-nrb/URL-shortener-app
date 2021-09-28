import 'networking.dart';

const apiKey = 'G1AXoHiLFcrK1QoKfl19yg00A9dxDeqVPsbMvCG2QtzRnKJcy8At1aRi1gcv';
const tinyURL = 'https://api.tinyurl.com/create?api_token=$apiKey';

class ShortURL {
  String urlToShorten = '';
  String alias = '';
  ShortURL({this.alias = '', this.urlToShorten = ''});
  Future<dynamic> getShortURL() async {
    print('is class mein aagaya');
    print(urlToShorten);
    if (alias == null) print('alias is null');
    NetworkHelper networkHelper = NetworkHelper(
      url: tinyURL,
      urlToShorten: urlToShorten,
      alias: alias,
    );
    var urlData = await networkHelper.getData();
    return urlData;
  }
}
