
import 'package:flutter/material.dart';

class MovieCastModel{
  late String name;
  late Image photo;

  MovieCastModel({required this.name, required this.photo});
}

late List<MovieCastModel> castList;