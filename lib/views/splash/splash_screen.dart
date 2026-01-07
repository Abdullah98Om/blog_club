import 'package:blog_club/core/di/dependency_injection.dart';
import 'package:blog_club/core/routers/routers_name.dart';
import 'package:blog_club/core/util/app_responsive.dart';
import 'package:blog_club/core/util/constant.dart';
import 'package:blog_club/viewmodels/splash_cubit/splash_cubit.dart';
import 'package:blog_club/viewmodels/splash_cubit/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SplashCubit>()..checkFirstEntry(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashGoOnboarding) {
            Navigator.pushReplacementNamed(context, RoutesName.onboarding);
          }

          if (state is SplashGoHome) {
            Navigator.pushReplacementNamed(context, RoutesName.index);
          }
        },
        child: Scaffold(
          body: Container(
            height: context.screenHeight,
            width: context.screenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImage.splashBG),
                fit: BoxFit.cover,
              ),
            ),

            child: Center(child: Image.asset(AppImage.logoImg)),
          ),
        ),
      ),
    );
  }
}
