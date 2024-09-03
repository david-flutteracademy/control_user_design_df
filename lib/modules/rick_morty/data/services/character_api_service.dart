import 'package:control_user_design_df/core/apis/rick_morty_api.dart';
import 'package:http/http.dart' as http;

class CharacterApiServices {
  Future<http.Response?> getCharatersPerPage(int page) async {
    http.Response? myResponse;

    try {
      var httpsUri = Uri(
        scheme: 'https',
        host: APIRickMorty.baseUrl,
        path: '/api/character/',
        queryParameters: {
          'page': page.toString(),
        },
      );

      await http.get(httpsUri).then((response) {
        myResponse = response;
      });

      return myResponse;
    } catch (e) {
      return null;
    }
  }
}
