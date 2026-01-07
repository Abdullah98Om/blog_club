import 'package:blog_club/core/theme/app_text_style.dart';
import 'package:blog_club/core/util/constant.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hi, Jonathan!",
                style: AppTextStyle.h3.copyWith(fontSize: 18, height: 1),
              ),

              Image.asset(AppImage.notificationIcon),
            ],
          ),
          SizedBox(height: 8),
          Text("Explore today’s", style: AppTextStyle.h1),
        ],
      ),
    );
  }
}
