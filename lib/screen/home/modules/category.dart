import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../data/data.dart';

class Category extends StatefulWidget {
  final Size size;

  const Category(this.size, {super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var genre = GenreData();
    return SizedBox(
      height: widget.size.height / 15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genre.genreList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 16),
                width: widget.size.width / 4,
                decoration: selectedIndex == index
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.lightBlue,
                            Colors.lightBlueAccent,
                          ],
                        ),
                      )
                    : const BoxDecoration(color: Colors.transparent),
                child: Text(
                  genre.genreList[index].name,
                  style: const TextStyle(
                    fontSize: 20,
                    color: white,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
