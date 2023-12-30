import 'package:flutter/material.dart';

class GenreModel{
  late int id;
  late String name;

  GenreModel({required this.id, required this.name});
}

late List<GenreModel> genreList;