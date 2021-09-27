import 'networking.dart';

const apiKey = 'G1AXoHiLFcrK1QoKfl19yg00A9dxDeqVPsbMvCG2QtzRnKJcy8At1aRi1gcv';
const tinyURL = 'https://api.tinyurl.com/create?api_token=$apiKey';

class ShortURL {
  Future<dynamic> getShortURL(String urlToShorten, String alias) async {
    NetworkHelper networkHelper = alias.isEmpty
        ? NetworkHelper(
            url: tinyURL,
            urlToShorten: urlToShorten,
          )
        : NetworkHelper(
            url: tinyURL,
            urlToShorten: urlToShorten,
            alias: alias,
          );
    var urlData = await networkHelper.getData();
    return urlData;
  }
}
