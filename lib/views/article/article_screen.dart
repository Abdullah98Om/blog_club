import 'package:blog_club/core/widgets/my_app_bar.dart';
import 'package:blog_club/views/app_gradient_background.dart';
import 'package:blog_club/views/article/widgets/blur_widget.dart';
import 'package:blog_club/views/article/widgets/card_widget.dart';
import 'package:blog_club/views/article/widgets/float_widget.dart';
import 'package:blog_club/views/article/widgets/my_profile_widget.dart';
import 'package:blog_club/views/article/widgets/share_profile_widget.dart';
import 'package:blog_club/views/article/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppGradientBackground(
      child: Column(
        children: [
          MyAppBar(),
          SizedBox(height: 24),
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            TitleWidget(),
                            SizedBox(height: 42),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyProfileWidget(),
                                ShareProfileWidget(),
                              ],
                            ),
                          ],
                        ),
                      ),
                      CardWidget(),
                    ],
                  ),
                ),
                BlurWidget(),

                FloatWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
