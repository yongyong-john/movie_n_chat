import 'package:movie_n_chat/data/movie_model.dart';

class CommonGenres {
  static List<GenreModel> _genres = [];

  static void setGenres(List<GenreModel> genres) {
    _genres = genres;
  }

  static List<GenreModel> getGenres() {
    return _genres;
  }
}
