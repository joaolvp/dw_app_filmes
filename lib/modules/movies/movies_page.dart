import 'package:app_filmes/modules/movies/movies_controller.dart';
import 'package:app_filmes/modules/movies/widgets/movies_filters.dart';
import 'package:app_filmes/modules/movies/widgets/movies_group.dart';
import 'package:app_filmes/modules/movies/widgets/movies_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MoviesPage extends GetView<MoviesController> {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    //var popular = controller.popularMovies;
    return Obx(() { 
            return SizedBox(
          width: Get.width,
          child: ListView(
            children: [
              const MoviesHeader(),
              const MoviesFilters(),
              Offstage(
                offstage: controller.popularMovies.isEmpty ? true : false,
                child: MoviesGroup(
                  title: 'Mais Populares', 
                  movies: controller.popularMovies,)),
              Offstage(
                offstage: controller.topRatedMovies.isEmpty ? true : false,
                child: MoviesGroup(
                  title: 'Top Filmes', 
                  movies: controller.topRatedMovies,)),
              Offstage(
                offstage: controller.popularMovies.isEmpty && controller.topRatedMovies.isEmpty ? false : true,
                child: const Column(
                  children: [
                    SizedBox(height: 30,),
                    Center(child: Text('Nenhum filme encontrado :(')),
                  ],
                ),
              )
            ],
          ),
        );
        }
      );
  }
}