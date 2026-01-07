import 'package:blog_club/core/theme/app_text_style.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/core/util/constant.dart';
import 'package:blog_club/core/widgets/my_buttont.dart';
import 'package:blog_club/core/widgets/my_text_feild.dart';
import 'package:flutter/material.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
        width: context.screenWidth,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
        ),
        child: ListView(
          children: [
            Text("Welcome back", style: AppTextStyle.h1),
            SizedBox(height: 12),
            Text("Sign in with your account", style: AppTextStyle.h3),
            SizedBox(height: 32),

            MyTextFormField(title: "Username"),
            SizedBox(height: 20),

            MyTextFormField(
              title: "Password",
              scureText: true,
              icon: Text(
                "Show",
                style: AppTextStyle.h3.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            SizedBox(height: 32),
            MyButtont(name: "LOGIN"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Forgot your password?  ", style: AppTextStyle.h3),
                Text(
                  "Reset here",
                  style: AppTextStyle.h3.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Center(
              child: Text(
                "OR SIGN IN WITH",
                style: AppTextStyle.h3.copyWith(
                  letterSpacing: 1.75,
                  fontSize: context.responsive(mobile: 12),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImage.googleIcon),
                SizedBox(width: 32),
                Image.asset(AppImage.facebookIcon),
                SizedBox(width: 32),

                Image.asset(AppImage.twitterIcon),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
