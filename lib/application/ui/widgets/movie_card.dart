import 'package:app_filmes/models/movie_model.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final MovieModel movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 148,
      height: 280,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                        movie.posterPath,
                        width: 148,
                        height: 184,
                        fit: BoxFit.cover
                        )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Assasinos da Lua das Flores',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const Text(
                '2023',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.grey),
                
              ),
            ],
          ),
          Positioned(
            bottom: 70,
            right: -8,
            child: Material(
              elevation: 5,
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: 30,
                child: IconButton(
                  iconSize: 16,
                  onPressed: (){}, 
                  icon: const Icon(Icons.favorite_border, color: Colors.grey,)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
