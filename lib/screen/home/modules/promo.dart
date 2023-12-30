import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class Promo extends StatelessWidget {
  const Promo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        right: appPadding,
        bottom: 12,
      ),
      child: Container(
        height: size.height / 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: const LinearGradient(colors: [
            CupertinoColors.systemBlue,
            Colors.lightBlueAccent,
          ]),
        ),
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chào mừng năm mới 2024',
                      style: TextStyle(
                        color: white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Nội dung sự kiện năm mới 2024',
                      style: TextStyle(
                        fontSize: 16,
                        color: white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'OFF',
                      style: TextStyle(
                        color: white,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: '50%',
                      style: TextStyle(
                        color: white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}