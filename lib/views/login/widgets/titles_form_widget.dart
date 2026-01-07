import 'package:blog_club/core/theme/app_text_style.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:flutter/material.dart';

class TitlesFormWidget extends StatelessWidget {
  const TitlesFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "LOGIN",
            style: AppTextStyle.h1.copyWith(
              fontSize: context.responsive(mobile: 18),
              height: 32 / 18,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
          Text(
            "SIGN UP",
            style: AppTextStyle.h1.copyWith(
              fontSize: context.responsive(mobile: 18),
              height: 32 / 18,
              color: Theme.of(
                context,
              ).scaffoldBackgroundColor.withValues(alpha: 0.25),
            ),
          ),
        ],
      ),
    );
  }
}
