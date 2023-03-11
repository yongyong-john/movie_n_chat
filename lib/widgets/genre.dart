import 'package:flutter/material.dart';
import 'package:movie_n_chat/common/common_genres.dart';

class Genre extends StatelessWidget {
  Genre(
    this.genresKey, {
    Key? key,
  }) : super(key: key);

  final List<dynamic> genresKey;
  List<dynamic> genresData = CommonGenres.getGenres();

  @override
  Widget build(BuildContext context) {
    List<dynamic> genresValue = [];
    for (int key in genresKey) {
      for (int i = 0; i < genresData.length; i++) {
        if (genresData[i].id == key) {
          genresValue.add(genresData[i].name);
          break;
        }
      }
    }
    String joinedGenres = genresValue.join(', ');
    return Text(joinedGenres,
        style: TextStyle(color: Theme.of(context).secondaryHeaderColor, fontWeight: FontWeight.w700));
  }
}
