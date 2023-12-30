import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../data/data.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
    required this.movie,
  });

  final MovieData movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: appPadding,
      ),
      child: Row(
        children: movie.movieList
            .map(
              (e) => Builder(builder: (context) {
            return Expanded(
              child: Container(
                height: 200,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                child: Image(
                  image: e.image.image,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
        )
            .toList(),
      ),
    );
  }
}