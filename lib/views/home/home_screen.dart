import 'package:blog_club/views/home/widgets/cards_widget.dart';
import 'package:blog_club/views/home/widgets/scroll_image_widget.dart';
import 'package:blog_club/views/home/widgets/stories_widget.dart';
import 'package:blog_club/views/home/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: ListView(
        children: [
          TitleWidget(),
          StoriesWidget(),
          ScrollImageWidget(),
          CardsWidget(
            title: "Latest News",
            subTitle: Text(
              "More",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
