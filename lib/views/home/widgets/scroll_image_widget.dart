import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/core/widgets/my_network_image.dart';
import 'package:flutter/material.dart';

class ScrollImageWidget extends StatefulWidget {
  const ScrollImageWidget({super.key});

  @override
  State<ScrollImageWidget> createState() => _ScrollImageWidgetState();
}

class _ScrollImageWidgetState extends State<ScrollImageWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.responsiveHeight(mobile: 325),

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,

        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 40 : 0),
            child: Align(
              alignment: AlignmentGeometry.topCenter,
              child: Stack(
                alignment: AlignmentGeometry.center,
                children: [
                  // Shadow
                  Container(
                    height: context.responsiveHeight(
                      mobile: index == currentIndex ? 273 : 244,
                    ),
                    width: context.responsiveWidth(mobile: 153),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(
                            0xff0D253C,
                          ).withValues(alpha: 0.44),
                          offset: const Offset(0, 16),
                          blurRadius: 32,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                  ),

                  // Image
                  Stack(
                    children: [
                      Container(
                        height: context.responsiveHeight(
                          mobile: index == currentIndex ? 273 : 244,
                        ),
                        width: context.responsiveWidth(mobile: 236),
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: MyNetworkImage(
                            height: context.responsiveHeight(
                              mobile: index == currentIndex ? 273 : 244,
                            ),
                            width: context.responsiveWidth(mobile: 236),
                            fit: BoxFit.cover,
                            url:
                                "https://media.istockphoto.com/id/2237088001/photo/boy-feeling-thoughtful-and-looking-away-outdoors.webp?a=1&b=1&s=612x612&w=0&k=20&c=sju2vGEZYnZFye2pa1GJtdz5XfzH2caWjVCO4-PEbUw=",
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Container(
                          height: context.responsiveHeight(
                            mobile: index == currentIndex ? 273 : 244,
                          ),
                          width: context.responsiveWidth(mobile: 236),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: const [0.5, 1.0],
                              colors: [
                                const Color(0xFF0D253C).withValues(alpha: 0),
                                const Color(0xFF0D253C),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 32,
                        left: 24,
                        child: Text(
                          "Technology",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
