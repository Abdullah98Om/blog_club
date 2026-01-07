import 'package:blog_club/core/theme/app_color.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/core/util/constant.dart';
import 'package:blog_club/views/home/widgets/cards_widget.dart';
import 'package:flutter/material.dart';

class PostsWidget extends StatelessWidget {
  const PostsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      padding: .symmetric(horizontal: 0, vertical: 32),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -25),
            blurRadius: 32,
            color: Color(0xff5282FF).withValues(alpha: 0.07),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),

      child: CardsWidget(
        title: "My Posts",
        subTitle: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(AppImage.grid),
            SizedBox(width: 16),
            Image.asset(AppImage.table),
          ],
        ),
      ),
    );
  }
}
