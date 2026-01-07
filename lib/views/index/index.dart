import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/views/app_gradient_background.dart';
import 'package:blog_club/views/home/home_screen.dart';
import 'package:blog_club/views/index/widgets/bottom_nav_bar_widget.dart';

import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return AppGradientBackground(
      child: SizedBox(
        height: context.screenHeight,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: HomeScreen(),
            ),
            Positioned(bottom: 0, child: BottomNavBarWidget()),
          ],
        ),
      ),
    );
  }
}
