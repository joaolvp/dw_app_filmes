import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
          child: FadeInImage.memoryNetwork(
            image: movieData.urlImage, 
            placeholder: kTransparentImage,
            fit: BoxFit.fill,
          )
        );
    } else {
      return const SizedBox.shrink();
    }
  }
}
