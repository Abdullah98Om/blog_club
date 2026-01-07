import 'package:blog_club/core/theme/app_color.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/core/util/constant.dart';
import 'package:flutter/material.dart';

class ImagesPartWidget extends StatelessWidget {
  const ImagesPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: context.responsiveHeight(mobile: 332),
      child: Column(
        children: [
          // Row 1
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    child: Container(
                      width: context.responsiveWidth(mobile: 76),
                      height: context.responsiveHeight(mobile: 157),
                      decoration: BoxDecoration(
                        boxShadow: [AppShadow.shadow1],
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  Container(
                    width: context.responsiveWidth(mobile: 92),
                    height: context.responsiveHeight(mobile: 157),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppImage.onboarding4),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: context.responsiveWidth(mobile: 16)),
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      child: Container(
                        width: context.responsiveWidth(mobile: 166),
                        height: context.responsiveHeight(mobile: 157),
                        decoration: BoxDecoration(
                          boxShadow: [AppShadow.shadow1],
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                    Container(
                      height: context.responsiveHeight(mobile: 157),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),

                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppImage.onboarding2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: context.responsiveHeight(mobile: 16)),
          // Row 2
          Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      child: Container(
                        width: context.responsiveWidth(mobile: 166),
                        height: context.responsiveHeight(mobile: 157),
                        decoration: BoxDecoration(
                          boxShadow: [AppShadow.shadow1],
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                    Container(
                      height: context.responsiveHeight(mobile: 157),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),

                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppImage.onboarding3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: context.responsiveWidth(mobile: 16)),
              Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    child: Container(
                      width: context.responsiveWidth(mobile: 76),
                      height: context.responsiveHeight(mobile: 157),
                      decoration: BoxDecoration(
                        boxShadow: [AppShadow.shadow1],
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  Container(
                    width: context.responsiveWidth(mobile: 92),
                    height: context.responsiveHeight(mobile: 157),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      image: DecorationImage(
                        image: AssetImage(AppImage.onboarding1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
