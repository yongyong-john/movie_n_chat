import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  @JsonKey(name: 'popularity')
  double popularity = 0.0;
  @JsonKey(name: 'vote_count')
  int voteCount = 0;
  @JsonKey(name: 'video')
  bool video = false;
  @JsonKey(name: 'poster_path')
  String posterPath = '';
  @JsonKey(name: 'id')
  int id = 0;
  @JsonKey(name: 'adult')
  bool adult = false;
  @JsonKey(name: 'backdrop_path')
  String backdropPath = '';
  @JsonKey(name: 'original_language')
  String originalLanguage = '';
  @JsonKey(name: 'original_title')
  String originalTitle = '';
  @JsonKey(name: 'genre_ids')
  List<int> genreIds = [];
  @JsonKey(name: 'title')
  String title = '';
  @JsonKey(name: 'vote_average')
  num voteAverage = 0;
  @JsonKey(name: 'overview')
  String overview = '';
  @JsonKey(name: 'release_date')
  String releaseDate = '';

  MovieModel(
      {required double popularity,
      required int voteCount,
      required bool video,
      required String posterPath,
      required int id,
      required bool adult,
      required String backdropPath,
      required String originalLanguage,
      required String originalTitle,
      required List<int> genreIds,
      required String title,
      required num voteAverage,
      required String overview,
      required String releaseDate}) {
    this.popularity = popularity;
    this.voteCount = voteCount;
    this.video = video;
    this.posterPath = posterPath;
    this.id = id;
    this.adult = adult;
    this.backdropPath = backdropPath;
    this.originalLanguage = originalLanguage;
    this.originalTitle = originalTitle;
    this.genreIds = genreIds;
    this.title = title;
    this.voteAverage = voteAverage;
    this.overview = overview;
    this.releaseDate = releaseDate;
  }

  factory MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}

@JsonSerializable()
class GenreModel {
  @JsonKey(name: 'id')
  int id = 0;
  @JsonKey(name: 'name')
  String name = '';

  GenreModel({
    required int id,
    required String name,
  }) {
    this.id = id;
    this.name = name;
  }

  factory GenreModel.fromJson(Map<String, dynamic> json) => _$GenreModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenreModelToJson(this);
}
