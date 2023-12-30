import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class Search extends StatelessWidget {
  final Size size;

  const Search(this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: appPadding,
        vertical: 24,
      ),
      child: SizedBox(
        height: size.height / 15,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: size.height / 15,
                decoration: BoxDecoration(
                  color: darker2,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: appPadding,
                        right: appPadding,
                      ),
                      child: Icon(
                        Icons.search,
                        color: white,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          // Remove the border when focused
                          enabledBorder: InputBorder.none,
                          // Remove the border when not focused

                          hintText: 'Search Movie',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 12),
              width: size.height / 15,
              height: size.height / 15,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.blueAccent,
                    Colors.lightBlueAccent,
                  ],
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(
                Icons.tune,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
