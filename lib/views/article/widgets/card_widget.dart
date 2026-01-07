import 'package:blog_club/core/theme/app_color.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/core/widgets/my_network_image.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // image
        Container(
          height: context.responsiveHeight(mobile: 220),
          width: context.screenWidth,
          margin: .symmetric(vertical: 24),

          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(28),
              topRight: Radius.circular(28),
            ),
            child: MyNetworkImage(
              fit: BoxFit.cover,
              url:
                  "https://media.istockphoto.com/id/2237088001/photo/boy-feeling-thoughtful-and-looking-away-outdoors.webp?a=1&b=1&s=612x612&w=0&k=20&c=sju2vGEZYnZFye2pa1GJtdz5XfzH2caWjVCO4-PEbUw=",
            ),
          ),
        ),

        // title && description
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Text(
                "A man’s sexuality is never your mind responsibility.",

                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  height: 20 / 18,
                  color: AppColor.secondaryColor,
                ),
              ),
              SizedBox(height: 24),
              Text(
                "This one got an incredible amount of backlash the last time I said it, so I’m going to say it again: a man’s sexuality is never, ever your responsibility, under any circumstances. Whether it’s the fifth date or your twentieth year of marriage, the correct determining factor for whether or not you have sex with your partner isn’t whether you ought to “take care of him” or “put out” because it’s been a while or he’s really horny — the correct determining factor for whether or not you have sex is whether or not you want to have sex.This one got an incredible amount of backlash the last time I said it, so I’m going to say it again: a man’s sexuality is never, ever your responsibility, under any circumstances. Whether it’s the fifth date or your twentieth year of marriage, the correct determining factor for whether or not you have sex with your partner isn’t whether you ought to “take care of him” or “put out” because it’s been a while or he’s really horny — the correct determining factor for whether or not you have sex is whether or not you want to have sex.",
                // maxLines: 14,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 20 / 14,
                  color: AppColor.darkBlueTextColor,
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}
