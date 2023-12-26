
import 'dart:convert';

import 'package:app_filmes/models/cast_model.dart';
import 'package:app_filmes/models/genre_model.dart';

class MovieDetailModel {
  final String title;
  final double stars;
  final List<GenreModel> genres;
  final List<String> urlImages;
  final DateTime releaseDate;
  final String overview;
  final List<String> productionCompanies;
  final String originalLanguage;
  final List<CastModel> cast;
  MovieDetailModel({
    required this.title,
    required this.stars,
    required this.genres,
    required this.urlImages,
    required this.releaseDate,
    required this.overview,
    required this.productionCompanies,
    required this.originalLanguage,
    required this.cast,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'stars': stars,
      'genres': genres.map((x) => x.toMap()).toList(),
      'urlImages': urlImages,
      'releaseDate': releaseDate.millisecondsSinceEpoch,
      'overview': overview,
      'productionCompanies': productionCompanies,
      'originalLanguage': originalLanguage,
      'cast': cast.map((x) => x.toMap()).toList(),
    };
  }

  factory MovieDetailModel.fromMap(Map<String, dynamic> map) {

    var urlImagesPosters = map['images']['posters'];
    var urlImages = urlImagesPosters?.map((i) => 'https://image.tmdb.org/t/p/w500${i['file_path']}') ?? const [];

    return MovieDetailModel(
      title: map['title'] ?? '',
      stars: map['vote_average']?.toDouble() ?? 0.0,
      genres: List<GenreModel>.from(map['genres']?.map((x) => GenreModel.fromMap(x)) ?? const []),
      urlImages: urlImages,
      releaseDate: DateTime.parse(map['releaseDate']),
      overview: map['overview'] ?? '',
      productionCompanies: List<dynamic>.from(map['productionCompanies'] ?? const []).map<String>((p) => p['name']).toList(),
      originalLanguage: map['originalLanguage'] ?? '',
      cast: List<CastModel>.from(map['credits']['cast']?.map((x) => CastModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieDetailModel.fromJson(String source) => MovieDetailModel.fromMap(json.decode(source));
}