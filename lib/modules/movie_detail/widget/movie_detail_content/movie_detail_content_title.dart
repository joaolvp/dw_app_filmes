import 'package:app_filmes/application/ui/theme_extensions.dart';
import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class MovieDetailContentTitle extends StatelessWidget {

  final MovieDetailModel? movie;

  const MovieDetailContentTitle({
    Key? key,
    required this.movie,
  }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            Text(
              movie?.title ?? '',
              style: const TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10,),
            RatingStars(
              value: (movie?.stars ?? 1) / 2,
              starColor: context.themeOrange,
              starSize: 16,
            ),
            const SizedBox(
               height: 10,
            ),
            Text(
              movie?.genres.map((e) => e.name).join(', ') ?? '',
              style: TextStyle(
                fontSize: 13,
                color: context.themeGrey
              ),
            )

          ],
         ),
       );
  }
}
