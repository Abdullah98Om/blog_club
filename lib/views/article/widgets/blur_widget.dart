import 'package:blog_club/core/util/app_responsive.dart';
import 'package:flutter/material.dart';

class BlurWidget extends StatelessWidget {
  const BlurWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: context.screenWidth,
        height: 116,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.0, 1.0],
            colors: [
              const Color(0xFFF9FAFF).withValues(alpha: 0),
              const Color(0xFFFAFBFF),
            ],
          ),
        ),
      ),
    );
  }
}
