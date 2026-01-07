import 'package:blog_club/core/routers/routers_name.dart';
import 'package:blog_club/core/theme/app_color.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/core/widgets/my_network_image.dart';
import 'package:flutter/material.dart';

class MyProfileWidget extends StatelessWidget {
  const MyProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesName.profile);
      },
      child: Row(
        children: [
          // image
          Container(
            height: context.responsiveHeight(mobile: 38),
            width: context.responsiveHeight(mobile: 38),
            margin: .only(right: 16),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(18),
              child: MyNetworkImage(
                fit: BoxFit.cover,
                url:
                    "https://media.istockphoto.com/id/2237088001/photo/boy-feeling-thoughtful-and-looking-away-outdoors.webp?a=1&b=1&s=612x612&w=0&k=20&c=sju2vGEZYnZFye2pa1GJtdz5XfzH2caWjVCO4-PEbUw=",
              ),
            ),
          ),
          // name && time ago
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jasmine Levin",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.darkBlueTextColor,
                ),
              ),

              Text(
                "4m ago",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.darkGrayColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
