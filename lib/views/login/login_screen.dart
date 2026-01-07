import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/core/util/constant.dart';
import 'package:blog_club/views/app_gradient_background.dart';
import 'package:blog_club/views/login/widgets/login_form_widget.dart';
import 'package:blog_club/views/login/widgets/titles_form_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppGradientBackground(
      child: Container(
        margin: .symmetric(vertical: 85),

        width: context.screenWidth,
        child: Column(
          children: [
            Image.asset(AppImage.logoImg, height: 56, width: 110),
            SizedBox(height: 32),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                ),

                child: Column(
                  children: [TitlesFormWidget(), LoginFormWidget()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
