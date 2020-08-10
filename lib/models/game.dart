import 'package:json_annotation/json_annotation.dart';

part 'game.g.dart';

@JsonSerializable()
class Game {
  final double rating;
  final int id,
      rating_top,
      ratings_count,
      reviews_text_count,
      added,
      playtime,
      suggestions_count,
      reviews_count,
      metacritic;

  final bool tba;
  final String slug,
      name,
      released,
      background_image,
      user_game,
      saturated_color,
      dominant_color;
  final List<dynamic> ratings,
      platforms,
      parent_platforms,
      genres,
      stores,
      tags,
      short_screenshots;
  final dynamic added_by_status, clip;

  Game(
      {this.rating,
      this.rating_top,
      this.ratings_count,
      this.reviews_text_count,
      this.added,
      this.playtime,
      this.suggestions_count,
      this.reviews_count,
      this.slug,
      this.name,
      this.released,
      this.tba,
      this.background_image,
      this.metacritic,
      this.user_game,
      this.saturated_color,
      this.dominant_color,
      this.ratings,
      this.platforms,
      this.parent_platforms,
      this.genres,
      this.stores,
      this.tags,
      this.short_screenshots,
      this.added_by_status,
      this.clip,
      this.id});

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}

// list of products
// for our demo
List<Game> products = [
  Game(
    id: 1,
    name: "Red Dead Redemption 2",
    background_image:
        "https://media.rawg.io/media/games/511/5118aff5091cb3efec399c808f8c598f.jpg",
    slug:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Game(
    id: 4,
    name: "Resident Evil 2 Remake",
    background_image:
        "https://media.rawg.io/media/games/0df/0df4c2148306dc53963b3ad957bedc55.jpg",
    slug:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Game(
    id: 9,
    name: "Fifa 21",
    background_image:
        "https://media.rawg.io/media/games/511/5118aff5091cb3efec399c808f8c598f.jpg",
    slug:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];

/* "ratings":[
            {
               "id":5,
               "title":"exceptional",
               "count":5,
               "percent":83.33
            },
            {
               "id":4,
               "title":"recommended",
               "count":1,
               "percent":16.67
            }
         ], */ /* 
         "added_by_status":{
            "owned":2,
            "toplay":1,
            "playing":1
         }, */ /* 
         "platforms":[
            {
               "platform":{
                  "id":4,
                  "name":"PC",
                  "slug":"pc",
                  "image":null,
                  "year_end":null,
                  "year_start":null,
                  "games_count":244735,
                  "image_background":"https://media.rawg.io/media/games/d58/d588947d4286e7b5e0e12e1bea7d9844.jpg"
               },
               "released_at":"2019-11-11",
               "requirements_en":{
                  "minimum":"<strong>Minimum:</strong><br><ul class=\"bb_ul\"><li><strong>OS:</strong> Microsoft Windows 7, 8, 10<br></li><li><strong>Processor:</strong> Pentium III or AMD Athlon<br></li><li><strong>Memory:</strong> 1024 MB RAM<br></li><li><strong>Graphics:</strong> GTX 750<br></li><li><strong>DirectX:</strong> Version 9.0<br></li><li><strong>Network:</strong> Broadband Internet connection<br></li><li><strong>Storage:</strong> 3120 MB available space</li></ul>",
                  "recommended":"<strong>Recommended:</strong><br><ul class=\"bb_ul\"><li><strong>OS:</strong> Microsoft Windows 7, 8, 10<br></li><li><strong>Processor:</strong> Intel Pentium 4 or AMD Athlon XP<br></li><li><strong>Memory:</strong> 2048 MB RAM<br></li><li><strong>Graphics:</strong> GTX 960<br></li><li><strong>DirectX:</strong> Version 10<br></li><li><strong>Network:</strong> Broadband Internet connection<br></li><li><strong>Storage:</strong> 3120 MB available space</li></ul>"
               },
               "requirements_ru":null
            }
         ], */ /* 
         "parent_platforms":[
            {
               "platform":{
                  "id":1,
                  "name":"PC",
                  "slug":"pc"
               }
            }
         ], */ /* 
         "genres":[
            {
               "id":4,
               "name":"Action",
               "slug":"action",
               "games_count":92780,
               "image_background":"https://media.rawg.io/media/games/929/9295e55ce69cf5337c567983cf8b4137.jpeg"
            },
            {
               "id":59,
               "name":"Massively Multiplayer",
               "slug":"massively-multiplayer",
               "games_count":2147,
               "image_background":"https://media.rawg.io/media/screenshots/6d3/6d367773c06886535620f2d7fb1cb866.jpg"
            }
         ], */ /* 
         "stores":[
            {
               "id":376421,
               "store":{
                  "id":1,
                  "name":"Steam",
                  "slug":"steam",
                  "domain":"store.steampowered.com",
                  "games_count":41769,
                  "image_background":"https://media.rawg.io/media/games/929/9295e55ce69cf5337c567983cf8b4137.jpeg"
               },
               "url_en":"https://store.steampowered.com/app/1175930/",
               "url_ru":""
            }
         ], */ /* 
         "tags":[
            {
               "id":40834,
               "name":"Commentary available",
               "slug":"commentary-available",
               "language":"eng",
               "games_count":201,
               "image_background":"https://media.rawg.io/media/screenshots/b06/b066f5358cae814ba11a68895e38acff_vODaQbn.jpg"
            },
            {
               "id":40838,
               "name":"Includes level editor",
               "slug":"includes-level-editor",
               "language":"eng",
               "games_count":1239,
               "image_background":"https://media.rawg.io/media/games/21b/21babfc41e2a6972290833d1b860f13e.jpg"
            },
            {
               "id":40847,
               "name":"Steam Achievements",
               "slug":"steam-achievements",
               "language":"eng",
               "games_count":18292,
               "image_background":"https://media.rawg.io/media/games/fc1/fc1307a2774506b5bd65d7e8424664a7.jpg"
            },
            {
               "id":40850,
               "name":"Steam Leaderboards",
               "slug":"steam-leaderboards",
               "language":"eng",
               "games_count":4118,
               "image_background":"https://media.rawg.io/media/games/c7a/c7a71a0531a9518236d99d0d60abe447.jpg"
            },
            {
               "id":14,
               "name":"Early Access",
               "slug":"early-access",
               "language":"eng",
               "games_count":6254,
               "image_background":"https://media.rawg.io/media/games/66e/66e90c9d7b9a17335b310ceb294e9365.jpg"
            },
            {
               "id":7,
               "name":"Multiplayer",
               "slug":"multiplayer",
               "language":"eng",
               "games_count":20704,
               "image_background":"https://media.rawg.io/media/games/1bb/1bb86c35ffa3eb0d299b01a7c65bf908.jpg"
            },
            {
               "id":397,
               "name":"Online multiplayer",
               "slug":"online-multiplayer",
               "language":"eng",
               "games_count":3790,
               "image_background":"https://media.rawg.io/media/games/0cc/0ccb36f96f664cd82154f356f04c75f0.jpg"
            },
            {
               "id":1656,
               "name":"mmo",
               "slug":"mmo",
               "language":"eng",
               "games_count":997,
               "image_background":"https://media.rawg.io/media/games/447/4470c1e76f01acfaf5af9c207d1c1c92.jpg"
            },
            {
               "id":11669,
               "name":"stats",
               "slug":"stats",
               "language":"eng",
               "games_count":3252,
               "image_background":"https://media.rawg.io/media/games/88c/88c5b4d7c80276c03ff62aebb1a99ad4.jpg"
            }
         ], */ /* 
         "short_screenshots":[
            {
               "id":-1,
               "image":"https://media.rawg.io/media/screenshots/a52/a5202d8b66057227386e6bdb35eb3c72.jpg"
            },
            {
               "id":2220801,
               "image":"https://media.rawg.io/media/screenshots/f47/f47f4a86fb3667b82aeb60cfcd5628f9.jpg"
            },
            {
               "id":2220802,
               "image":"https://media.rawg.io/media/screenshots/b8d/b8d7e0c444ccd9fd98adff84b55483fb.jpg"
            },
            {
               "id":2220803,
               "image":"https://media.rawg.io/media/screenshots/d28/d289a8ae3bdd89115368f0e362d4ce9f.jpg"
            },
            {
               "id":2220804,
               "image":"https://media.rawg.io/media/screenshots/e56/e5644bb3cb9ac39de8ec250b3ae37dd5.jpg"
            },
            {
               "id":2220805,
               "image":"https://media.rawg.io/media/screenshots/a52/a5202d8b66057227386e6bdb35eb3c72.jpg"
            }
         ] */
