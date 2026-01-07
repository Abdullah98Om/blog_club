import 'package:blog_club/core/theme/app_color.dart';
import 'package:blog_club/core/widgets/my_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class StoryImageWidget extends StatelessWidget {
  const StoryImageWidget({
    super.key,
    required this.url,
    required this.height,
    required this.width,
  });

  final String? url;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,

      decoration: BoxDecoration(
        border: GradientBoxBorder(
          gradient: AppLinearGradient.linearGradient1,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: MyNetworkImage(fit: BoxFit.cover, url: "$url"),
        ),
      ),
    );
  }
}
