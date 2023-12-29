import 'package:app_filmes/modules/movies/movies_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesHeader extends GetView<MoviesController> {
  const MoviesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 196,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider(
            options: CarouselOptions(
                enableInfiniteScroll: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayCurve: Easing.linear,
                autoPlayAnimationDuration: const Duration(seconds: 1),
                autoPlay: true,
                height: 196,
                disableCenter: true,
                viewportFraction: 1.0),
            items: [
              'the_godfather.jpg',
              'pulp_fiction.jpg',
              'the_dark_knight.jpg',
              'the_lord_of_the_rings.jpg',
              'forrest_gump.jpg'
            ].map((movieName) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(
                    'assets/images/movies_header/$movieName',
                    fit: BoxFit.cover,
                  );
                },
              );
            }).toList(),
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
