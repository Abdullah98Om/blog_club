import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/core/util/constant.dart';
import 'package:blog_club/views/story_view/widgets/blur_part_widget.dart';
import 'package:blog_club/views/story_view/widgets/bottom_part_widget.dart';
import 'package:blog_club/views/story_view/widgets/dots_widget.dart';
import 'package:blog_club/views/story_view/widgets/linear_gradient_for_bg_widget.dart';
import 'package:blog_club/views/story_view/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class StoryViewScreen extends StatelessWidget {
  const StoryViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Container(
            height: context.screenHeight * 0.84,
            width: context.screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(28),
                bottomRight: Radius.circular(28),
              ),
              image: DecorationImage(
                image: AssetImage(AppImage.placeholderImage),
                fit: BoxFit.cover,
              ),
            ),

            child: Stack(
              children: [
                LinearGradientForBGWidget(),
                Padding(
                  padding: .symmetric(horizontal: 40, vertical: 60),
                  child: Column(
                    children: [
                      DotsWidget(),

                      SizedBox(height: 24),
                      ProfileWidget(),
                      Spacer(),
                      BlurPartWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          BottomPartWidget(),
        ],
      ),
    );
  }
}
