import 'package:app_filmes/models/movie_model.dart';
import 'package:app_filmes/modules/movies/movies_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

class MoviesHeader extends GetView<MoviesController> {
  final List<MovieModel> movies;
  const MoviesHeader({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 196,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
           /*  shrinkWrap: true,
            scrollDirection: Axis.horizontal, */
            itemCount: 3,
            itemBuilder: (context, index, indexReal) {
              print('MOVIES $movies');
              if (movies.isEmpty) {
                return FadeInImage.memoryNetwork(
                image: 'https://i.gifer.com/origin/34/34338d26023e5515f6cc8969aa027bca.gif',
                placeholder: kTransparentImage,
                fit: BoxFit.cover,
              );
              }
              var movie = movies[index];
              return FadeInImage.memoryNetwork(
                image: 'https://image.tmdb.org/t/p/w500${movie.headerImage}',
                placeholder: kTransparentImage,
                fit: BoxFit.cover,
              );
            },
            options: CarouselOptions(
                enableInfiniteScroll: true,
                aspectRatio: 16 / 9,
                autoPlay: true,
                height: 196,
                disableCenter: true,
                viewportFraction: 1.0),
          ),
          Container(
            width: Get.width * .9,
            padding: const EdgeInsets.only(bottom: 20),
            child: TextField(
              onChanged: (value) => controller.filterByName(value),
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              cursorColor: Colors.black.withOpacity(0.7),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black)),
                fillColor: Colors.white.withOpacity(0.8),
                filled: true,
                labelText: 'Procurar Filmes',
                labelStyle: TextStyle(
                    color: Colors.black.withOpacity(0.6), fontSize: 17),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black.withOpacity(0.6),
                ),
                contentPadding: EdgeInsets.zero,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
