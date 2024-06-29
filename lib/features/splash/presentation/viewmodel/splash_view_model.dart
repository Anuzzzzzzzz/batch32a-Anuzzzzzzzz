import 'package:ebuy/features/splash/presentation/navigator/splash_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final logger = Logger();

final splashViewModelProvider =
    StateNotifierProvider<SplashViewModel, void>((ref) {
  final navigator = ref.read(splashViewNavigatorProvider);
  return SplashViewModel(navigator);
});

class SplashViewModel extends StateNotifier<void> {
  SplashViewModel(this.navigator) : super(null);

  final SplashViewNavigator navigator;

  void openLoginView() {
    Future.delayed(const Duration(seconds: 2), () {
      logger.i('Navigating to Login View');
      navigator.openLoginView();
    });
  }

  void openHomeView() {
    // Add your open home view logic here
  }
}
