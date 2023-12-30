import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../data/data.dart';

class SliderMovie extends StatelessWidget {
  const SliderMovie({
    super.key,
    required this.movie,
    required this.size,
  });

  final MovieData movie;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: movie.movieList
          .map(
            (e) => Builder(builder: (context) {
          return Stack(
            children: [
              Container(
                width: size.width,
                padding: const EdgeInsets.only(
                  left: 10,
                  bottom: 24,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: e.image.image)),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black12,
                      Colors.black,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: size.width,
                      padding: const EdgeInsets.only(
                        bottom: 8,
                        left: 8,
                      ),
                      child: Text(
                        e.name,
                        style: const TextStyle(
                          fontSize: 20,
                          color: white,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        children: [
                          Row(
                            children: List.generate(5, (index) {
                              int fullStars = e.rating.floor();
                              double remainder = e.rating - fullStars;
                              if (index < fullStars) {
                                return const Icon(
                                  Icons.star,
                                  color: Colors.amberAccent,
                                  size: 20,
                                );
                              } else if (index == fullStars && remainder > 0) {
                                return const Icon(
                                  Icons.star_half,
                                  color: Colors.amberAccent,
                                  size: 20,
                                );
                              } else {
                                return const Icon(
                                  Icons.star_border,
                                  color: Colors.amberAccent,
                                  size: 20,
                                );
                              }
                            }),
                          ),
                          Text(
                            '(${e.rating})',
                            style: const TextStyle(
                              color: white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      )
          .toList(),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
      ),
    );
  }
}