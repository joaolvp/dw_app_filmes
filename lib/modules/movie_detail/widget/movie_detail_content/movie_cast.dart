import 'package:app_filmes/application/ui/theme_extensions.dart';
import 'package:app_filmes/models/cast_model.dart';
import 'package:flutter/material.dart';

class MovieCast extends StatelessWidget {
  final CastModel? cast;

  const MovieCast({
    Key? key,
    this.cast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var image = cast?.image;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: 93,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: image != '' && image != ''
                ? Image.network(
                    'https://image.tmdb.org/t/p/w200$image',
                    width: 85,
                    height: 85,
                    fit: BoxFit.cover,
                  )
                : Image.asset('assets/images/person_cast.png', width: 85, height: 85, fit: BoxFit.cover),
          ),
          Text(cast?.name ?? '',
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
          Text(cast?.character ?? '',
              style: TextStyle(
                fontSize: 12,
                color: context.themeGrey,
              )),
        ],
      ),
    );
  }
}
