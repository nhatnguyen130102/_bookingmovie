import 'package:_bookingapp/constants/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Size size;
  const Header(this.size,{super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: appPadding,
        right: appPadding,
      ),
      child: SizedBox(
        height: size.height/10,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Find Your Best \nMovie',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              radius: size.height/24,
              backgroundImage: AssetImage('assets/image/apes.jpeg'),
            ),
          ],
        ),
      ),
    );
  }
}
