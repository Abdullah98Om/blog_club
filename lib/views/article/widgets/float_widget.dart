import 'package:blog_club/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class FloatWidget extends StatelessWidget {
  const FloatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      right: 40,
      child: Container(
        height: 48,
        padding: .symmetric(horizontal: 24),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 18,
              spreadRadius: 0,
              color: const Color(0x825282FF),
            ),
          ],
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff376AED),
        ),
        child: Row(
          children: [
            Icon(
              Icons.thumb_up_alt_outlined,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),

            Text(
              "  2.1K",
              style: TextStyle(
                color: AppColor.backgroundColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 24 / 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
