import 'package:blog_club/core/theme/app_color.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/views/home/widgets/story_image_widget.dart';
import 'package:flutter/material.dart';

class UpperCardWidget extends StatelessWidget {
  const UpperCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16, left: 40, right: 40, bottom: 32),
          padding: .symmetric(horizontal: 42, vertical: 32),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 15,
                color: Color(0xff5282FF).withValues(alpha: 0.06),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // profile
              Row(
                children: [
                  StoryImageWidget(
                    url:
                        "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
                    height: context.responsiveHeight(mobile: 84),
                    width: context.responsiveHeight(mobile: 84),
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "@joviedan",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.darkBlueTextColor,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Jovi Daniel",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: AppColor.secondaryColor,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "UX Designer",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                "About me",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: AppColor.secondaryColor,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Madison Blackstone is a director of user experience design, with experience managing global teams.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 20 / 14,
                  color: AppColor.secondaryColor,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        Positioned(
          bottom: 0,

          child: Stack(
            alignment: AlignmentGeometry.center,
            children: [
              Container(
                height: context.responsiveHeight(mobile: 68),
                width: context.responsiveWidth(mobile: 183),
                decoration: BoxDecoration(
                  color: Color(0xff386BED),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 16),
                      blurRadius: 32,
                      color: Color(0xff0D253C).withValues(alpha: 0.44),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff386BED),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: context.responsiveHeight(mobile: 68),
                      width: context.responsiveWidth(mobile: 77),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff2151CD),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "52",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              height: 22 / 20,
                              color: AppColor.backgroundColor,
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            "Post",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 18 / 12,
                              color: AppColor.backgroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: context.responsiveHeight(mobile: 68),
                      width: context.responsiveWidth(mobile: 77),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff386BED),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "250",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              height: 22 / 20,
                              color: AppColor.backgroundColor,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Following",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 18 / 12,
                              color: AppColor.backgroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: context.responsiveHeight(mobile: 68),
                      width: context.responsiveWidth(mobile: 77),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff386BED),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "4.5K",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              height: 22 / 20,
                              color: AppColor.backgroundColor,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 18 / 12,
                              color: AppColor.backgroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
