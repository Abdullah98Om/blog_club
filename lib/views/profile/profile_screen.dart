import 'package:blog_club/core/widgets/my_app_bar.dart';
import 'package:blog_club/views/app_gradient_background.dart';
import 'package:blog_club/views/article/widgets/blur_widget.dart';
import 'package:blog_club/views/profile/widgets/posts_widget.dart';
import 'package:blog_club/views/profile/widgets/upper_card_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppGradientBackground(
      child: Column(
        children: [
          MyAppBar(title: "Profile"),
          Expanded(
            child: Stack(
              children: [
                ListView(
                  children: [
                    UpperCardWidget(),
                    SizedBox(height: 32),
                    PostsWidget(),
                  ],
                ),
                BlurWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
