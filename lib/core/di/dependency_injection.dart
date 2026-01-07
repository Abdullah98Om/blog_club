import 'package:blog_club/core/storage/shared_service.dart';
import 'package:blog_club/viewmodels/splash_cubit/splash_cubit.dart';
import 'package:get_it/get_it.dart';

import 'package:shared_preferences/shared_preferences.dart';

GetIt getIt = GetIt.instance;

class DependencyInjection {
  static Future<void> init() async {
    //////////// SharedPreferences ////////////////////////////////
    final prefs = await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => prefs);
    getIt.registerLazySingleton<SharedService>(
      () => SharedService(getIt<SharedPreferences>()),
    );

    ///////////////// Cubits //////////////////////////////////////
    getIt.registerFactory<SplashCubit>(
      () => SplashCubit(getIt<SharedService>()),
    );
  }
}
