import 'package:_bookingapp/constants/constants.dart';
import 'package:_bookingapp/data/data.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modules/category.dart';
import 'modules/comingsoon.dart';
import 'modules/header.dart';
import 'modules/promo.dart';
import 'modules/search.dart';
import 'modules/slider.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var movie = MovieData();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(size),
            Search(size),
            Category(size),
            buildTitle('Now Playing'),
            SliderMovie(movie: movie, size: size),
            buildTitle('Coming Soon'),
            ComingSoon(movie: movie),
            buildTitle('Promo'),
            Promo(size: size),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: appPadding,
        vertical: 24,
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}




