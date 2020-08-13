import 'dart:async';

import 'package:games_end/models/game.model.dart';
import 'package:games_end/models/gamesPagination.model.dart';
import 'package:games_end/services/games.service.dart';

class BodyControl {
  Stream<List<Game>> stream;
  bool hasMore;
  int _pageSize;
  int page = 0;
  bool _isLoading;
  List<Game> _data;
  StreamController<List<Game>> _controller;
  GamesPagination _pagination;

  BodyControl(int pageSize) {
    _pageSize = pageSize;
    _data = List<Game>();
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
      _data = List<Game>();
      hasMore = true;
    }
    if (_isLoading || !hasMore) {
      return Future.value();
    }
    _isLoading = true;
    if (_pagination == null) {
      _pagination = await GamesService.list(_pageSize);
    } else {
      _pagination = await GamesService.list(_pageSize, next: _pagination.next);
    }
    _isLoading = false;
    _data.addAll(_pagination.results);
    hasMore = (_pagination.next != null && _pagination.next.isNotEmpty);
    _controller.add(_data);
  }
}
