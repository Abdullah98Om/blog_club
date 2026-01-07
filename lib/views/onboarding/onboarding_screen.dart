import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/views/app_gradient_background.dart';
import 'package:blog_club/views/onboarding/widgets/bottom_on_boarding_card_widget.dart';
import 'package:blog_club/views/onboarding/widgets/images_part_widget.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppGradientBackground(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(
              context.responsiveWidth(mobile: 40),
            ),
            child: Column(
              children: [
                SizedBox(height: context.responsiveHeight(mobile: 100)),
                ImagesPartWidget(),
              ],
            ),
          ),

          BottomOnBoardingCardWidget(),
        ],
      ),
    );
  }
}
