import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:flutter/material.dart';

class MovieDetailHeader extends StatelessWidget {
  final MovieDetailModel? movie;

  const MovieDetailHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var movieData = movie;
    if (movieData != null) {
      return SizedBox(
          width: double.infinity,
          height: 278,
          child: Image.network(movieData.urlImage, fit: BoxFit.fill,));
    } else {
      return const SizedBox.shrink();
    }
  }
}
