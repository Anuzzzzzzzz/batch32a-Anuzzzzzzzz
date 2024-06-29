import 'package:ebuy/app/navigator/navigate_route.dart';
import 'package:ebuy/features/auth/presentation/view/login_view.dart';
import 'package:ebuy/features/home/presentation/view/home_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewNavigatorProvider =
    Provider<HomeViewNavigator>((ref) => HomeViewNavigator());

class HomeViewNavigator with LoginViewRoute, HomeViewRoute {}

mixin HomeViewRoute {
  void openHomeView() {
    NavigateRoute.popAndPushRoute(const HomeView());
  }
}

mixin LoginViewRoute {
  void openLoginView() {
    NavigateRoute.popAndPushRoute(const LoginView());
  }
}
