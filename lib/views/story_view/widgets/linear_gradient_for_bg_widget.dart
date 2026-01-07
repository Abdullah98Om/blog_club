import 'package:blog_club/core/util/app_responsive.dart';
import 'package:flutter/material.dart';

class LinearGradientForBGWidget extends StatelessWidget {
  const LinearGradientForBGWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        height: context.screenHeight * 0.84,
        width: context.screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(28),
            bottomRight: Radius.circular(28),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(0, 0, 0, 0.58), // 0%
              Color.fromRGBO(0, 0, 0, 0.0), // 50%
              Color.fromRGBO(0, 0, 0, 0.27), // 100%
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
      ),
    );
  }
}
