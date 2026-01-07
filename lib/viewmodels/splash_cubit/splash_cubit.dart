import 'package:blog_club/core/storage/shared_service.dart';
import 'package:blog_club/core/storage/storage_keys.dart';
import 'package:blog_club/viewmodels/splash_cubit/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  final SharedService storage;

  SplashCubit(this.storage) : super(SplashInitial());

  Future<void> checkFirstEntry() async {
    final isFirstEntry = storage.readBool(AppStorageKey.firstEntry) ?? true;

    await Future.delayed(const Duration(seconds: 2));

    if (isFirstEntry) {
      emit(SplashGoOnboarding());
    } else {
      emit(SplashGoHome());
    }
  }
}
