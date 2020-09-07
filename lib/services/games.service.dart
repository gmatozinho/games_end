import 'dart:convert';

import 'package:games_end/models/gamesPagination.model.dart';
import 'package:http/http.dart' as http;

class GamesService {
  static Future<GamesPagination> list(int pageSize,
      {String name, String next}) async {
    var queryParameters = {
      'pageSize': pageSize.toString(),
      'search': name,
    };

    var uri = Uri.https('api.rawg.io', '/api/games', queryParameters);

    var url = next != null && next.isNotEmpty ? next : uri;

    final response = await http.get(url);

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      Map<String, dynamic> obj = json.decode(response.body);
      return GamesPagination.fromJson(obj);
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
