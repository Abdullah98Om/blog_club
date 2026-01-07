import 'package:blog_club/core/theme/app_color.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/core/widgets/my_network_image.dart';
import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  const CardsWidget({super.key, required this.title, required this.subTitle});

  final String title;
  final Widget subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Title Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,

                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              subTitle,
            ],
          ),
          SizedBox(height: 24),
          // items
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (contxt, index) {
              return Container(
                height: contxt.responsiveHeight(mobile: 141),
                margin: .only(bottom: 16),
                padding: EdgeInsets.only(right: 20),
                width: contxt.screenWidth,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      offset: Offset(0, 10),
                      color: Color(0xff5282FF).withValues(alpha: 0.06),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadiusGeometry.circular(16),
                ),
                child: Row(
                  children: [
                    Container(
                      height: contxt.responsiveHeight(mobile: 141),
                      width: contxt.responsiveWidth(mobile: 92),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.circular(16),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(16),
                        child: MyNetworkImage(
                          height: contxt.responsiveHeight(mobile: 141),
                          width: contxt.responsiveWidth(mobile: 92),
                          fit: BoxFit.cover,
                          url:
                              "https://static.wixstatic.com/media/2fe9a6_0725a1da2cbe49818542cb6bc09fc10a~mv2.jpg/v1/crop/x_0,y_0,w_4069,h_3840/fill/w_328,h_315,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/christopher-burns-Kj2SaNHG-hg-unsplash_j.jpg",
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const .symmetric(vertical: 20, horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "BIG DATA",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              "Why Big Data Needs Thick Data?",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 20 / 14,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),

                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.thumb_up_alt_outlined,
                                      size: 16,
                                      color: AppColor.darkBlueTextColor,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      "2.1K",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.darkBlueTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      size: 16,
                                      color: AppColor.darkBlueTextColor,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      "1hr ago",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.darkBlueTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.bookmark,
                                  size: 18,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
