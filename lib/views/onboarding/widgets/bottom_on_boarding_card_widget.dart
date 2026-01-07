import 'package:blog_club/core/di/dependency_injection.dart';
import 'package:blog_club/core/routers/routers_name.dart';
import 'package:blog_club/core/storage/shared_service.dart';
import 'package:blog_club/core/storage/storage_keys.dart';
import 'package:blog_club/core/theme/app_color.dart';
import 'package:blog_club/core/theme/app_text_style.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:flutter/material.dart';

class BottomOnBoardingCardWidget extends StatelessWidget {
  const BottomOnBoardingCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: context.responsiveHeight(mobile: 324),
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 40),
      width: context.screenWidth,
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -27),
            spreadRadius: 0,
            blurRadius: 32,
            color: Color(0xff5282FF).withValues(alpha: 0.07),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            "Read the article you want instantly",
            style: AppTextStyle.h1.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          SizedBox(height: context.responsiveHeight(mobile: 16)),
          Text(
            "You can read thousands of articles on Blog Club, save them in the application and share them with your loved ones.",
            style: AppTextStyle.h3.copyWith(color: AppColor.darkBlueTextColor),
          ),
          SizedBox(height: context.responsiveHeight(mobile: 24)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      margin: EdgeInsets.only(right: 6),
                      height: context.responsiveHeight(mobile: 8),
                      width: context.responsiveWidth(mobile: i == 3 ? 23 : 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: i == 3
                            ? Theme.of(context).colorScheme.primary
                            : Color(0xffDEE7FF),
                      ),
                    ),
                ],
              ),

              InkWell(
                onTap: () {
                  getIt<SharedService>().writeBool(
                    key: AppStorageKey.firstEntry,
                    value: false,
                  );

                  Navigator.pushReplacementNamed(context, RoutesName.index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  height: context.responsiveHeight(mobile: 60),
                  width: context.responsiveWidth(mobile: 88),
                  child: Icon(
                    Icons.arrow_forward,
                    size: context.responsive(mobile: 24),
                    color: AppColor.backgroundColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
