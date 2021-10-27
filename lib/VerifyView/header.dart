import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill)),
      child: Stack(
        children: [
          Positioned(
            left: 30,
            width: 80,
            height: 150,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                      AssetImage('assets/images/light-1.png'))),
            ),
          ),
          Positioned(
            left: 140,
            width: 80,
            height: 120,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                      AssetImage('assets/images/light-1.png'))),
            ),
          ),
          Positioned(
            right: 40,
            // top: 10,
            width: 40,
            height: 150,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/clock.png'))),
            ),
          ),
        ],
      ),
    );
  }

}
