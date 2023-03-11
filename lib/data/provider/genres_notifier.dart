import 'package:flutter/material.dart';
import 'package:movie_n_chat/data/movie_model.dart';

class GenresNotifier extends ChangeNotifier {
  final List<GenreModel> _genres = [];

  List<GenreModel> get genres => _genres;
  set genres(List<GenreModel> newGenres) {
    _genres.clear();
    _genres.addAll(newGenres);
    notifyListeners();
  }
}

GenresNotifier genresNotifier = GenresNotifier();
