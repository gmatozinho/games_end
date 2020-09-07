import 'dart:async';

import 'package:games_end/models/game.model.dart';
import 'package:games_end/models/gamesPagination.model.dart';
import 'package:games_end/services/games.service.dart';

class BodyControl {
  Stream<List<Game>> stream;
  bool hasMore;
  int _pageSize;
  String name = '';
  int page = 0;
  bool _isLoading;
  List<Game> data;
  StreamController<List<Game>> _controller;
  GamesPagination pagination;

  BodyControl(int pageSize) {
    _pageSize = pageSize;
    data = List<Game>();
    _controller = StreamController<List<Game>>.broadcast();
    _isLoading = false;
    stream = _controller.stream.map((List<Game> games) {
      return games.map((Game game) {
        return game;
      }).toList();
    });
    hasMore = true;

    refresh();
  }

  Future<void> refresh() {
    page = 0;
    return loadMore(clearCachedData: true);
  }

  Future<void> loadMore({bool clearCachedData = false}) async {
    if (clearCachedData) {
      data = List<Game>();
      hasMore = true;
    }
    if (_isLoading || !hasMore) {
      return Future.value();
    }
    _isLoading = true;
    if (pagination == null) {
      pagination = await GamesService.list(_pageSize, name: name);
    } else {
      pagination = await GamesService.list(_pageSize, next: pagination.next);
    }
    _isLoading = false;
    data.addAll(pagination.results);
    hasMore = (pagination.next != null && pagination.next.isNotEmpty);
    _controller.add(data);
  }
}
