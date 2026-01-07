import 'package:blog_club/core/theme/app_color.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:flutter/material.dart';

class BottomPartWidget extends StatelessWidget {
  const BottomPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: context.screenWidth,
        alignment: Alignment.centerRight,
        margin: .symmetric(vertical: 16),
        child: SizedBox(
          width: context.screenWidth * 0.6,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Column(
                children: [
                  Icon(Icons.keyboard_arrow_up_sharp, color: Color(0xff8FE6FF)),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 121,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.backgroundColor,
                    ),
                    child: Text(
                      "Read More",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: .only(right: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.favorite, color: Color(0xffFF3743), size: 32),
                    SizedBox(height: 4),
                    Text(
                      "450K",
                      style: TextStyle(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
