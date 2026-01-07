import 'package:blog_club/core/routers/routers_name.dart';
import 'package:blog_club/core/theme/app_color.dart';
import 'package:blog_club/core/theme/app_text_style.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/core/widgets/my_network_image.dart';
import 'package:blog_club/views/home/widgets/story_image_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key,
    this.name,
    this.url,
    this.dashed = false,
    this.colorIcon,
    required this.icon,
  });
  final bool dashed;
  final String? name, url;
  final Color? colorIcon;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesName.storyView);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                !dashed
                    ? StoryImageWidget(
                        url: url,
                        height: context.responsiveHeight(mobile: 68),
                        width: context.responsiveHeight(mobile: 68),
                      )
                    : DottedBorder(
                        options: RoundedRectDottedBorderOptions(
                          stackFit: StackFit.loose,
                          strokeWidth: 2,
                          color: AppColor.darkGrayColor,
                          strokeCap: StrokeCap.butt,
                          dashPattern: [5, 4],
                          radius: Radius.circular(18),
                          borderPadding: EdgeInsets.all(2),
                        ),
                        child: Container(
                          height: context.responsiveHeight(mobile: 68),
                          width: context.responsiveHeight(mobile: 68),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(6),

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: MyNetworkImage(
                                fit: BoxFit.cover,
                                url: "$url",
                              ),
                            ),
                          ),
                        ),
                      ),

                // Icon
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 22,
                    width: 22,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        width: 2,
                      ),
                      color: dashed
                          ? AppColor.darkGrayColor
                          : colorIcon ?? Theme.of(context).colorScheme.primary,
                    ),
                    child: Center(
                      child: Icon(
                        icon,
                        size: 13,
                        color: AppColor.backgroundColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Text("$name", style: AppTextStyle.h3.copyWith(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
