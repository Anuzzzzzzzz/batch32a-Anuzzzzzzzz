import 'package:ebuy/app/navigator/navigate_route.dart';
import 'package:ebuy/features/auth/presentation/view/login_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashViewNavigatorProvider = Provider((ref) => SplashViewNavigator());

class SplashViewNavigator {
  void openLoginView() {
    NavigateRoute.popAndPushRoute(const LoginView());
  }
}
