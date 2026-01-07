import 'package:blog_club/core/routers/routers_name.dart';
import 'package:blog_club/core/theme/app_text_style.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/core/util/constant.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.responsiveHeight(mobile: 120),
      color: Colors.transparent,
      width: context.screenWidth,
      child: Stack(
        children: [
          // items
          Positioned(
            bottom: 0,
            child: Container(
              height: context.responsiveHeight(mobile: 82),
              width: context.screenWidth,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -3),
                    blurRadius: 16,
                    color: Color(0xff2D2D2D).withValues(alpha: 0.1),
                  ),
                ],
                color: Theme.of(context).scaffoldBackgroundColor,
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  SizedBox(
                    width: context.screenWidth * 0.45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ItemNavBarWidget(
                          icon: AppImage.icon1,
                          title: "Home",
                          selected: true,
                        ),
                        ItemNavBarWidget(
                          icon: AppImage.icon4,
                          title: "Article",
                          selected: false,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: context.screenWidth * 0.45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ItemNavBarWidget(
                          icon: AppImage.icon3,
                          title: "Search",
                          selected: false,
                        ),
                        ItemNavBarWidget(
                          icon: AppImage.icon2,
                          title: "Menu",
                          selected: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Add Icon
          Positioned(
            left: 0,
            right: 0,
            bottom: context.responsiveHeight(mobile: 32),

            child: Container(
              width: context.responsiveWidth(mobile: 64),
              height: context.responsiveWidth(mobile: 64),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 4,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                color: Theme.of(context).colorScheme.primary,
              ),

              child: Center(
                child: Icon(Icons.add, color: Color(0xff8FE6FF), size: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemNavBarWidget extends StatelessWidget {
  const ItemNavBarWidget({
    super.key,
    required this.icon,
    required this.title,
    this.selected = false,
  });
  final String icon, title;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesName.article);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset(icon),
          SizedBox(height: 8),
          Text(
            title,

            style: AppTextStyle.h1.copyWith(
              fontSize: 10,
              color: selected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.surface,
            ),
          ),
        ],
      ),
    );
  }
}
