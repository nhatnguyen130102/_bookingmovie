import 'package:flutter/material.dart';
import 'cast_model.dart';


class MovieModel {
  late int id;
  late String name;
  late List<String> genre;
  late double rating;
  late String director;
  late String storyLine;
  late Image image;
  late Image imageLogo;
  late List<MovieCastModel> castList;

  MovieModel({
    required this.id,
    required this.genre,
    required this.name,
    required this.rating,
    required this.director,
    required this.storyLine,
    required this.image,
    required this.imageLogo,
    required this.castList,
  });
}
