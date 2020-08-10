import 'dart:convert';

import 'package:games_end/models/game.dart';
import 'package:http/http.dart' as http;

const pageSize = 10;
const gamesByRating =
    "https://api.rawg.io/api/games?page_size=$pageSize&ordering=-rating&search=gta%20v";

class GamesService {
  static Future<List<Game>> list() async {
    // ignore: not_enough_positional_arguments
    final response = await http.get(gamesByRating);

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      Map<String, dynamic> obj = json.decode(response.body);
      Iterable list = obj["results"];
      return list.map((model) => Game.fromJson(model)).toList();
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
