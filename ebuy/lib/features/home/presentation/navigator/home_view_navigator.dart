import 'package:ebuy/app/navigator/navigator.dart';
import 'package:ebuy/features/auth/presentation/navigator/login_navigator.dart';
import 'package:ebuy/features/home/presentation/view/home_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewNavigatorProvider = Provider<HomeViewNavigator>((ref) {
  return HomeViewNavigator();
});

class HomeViewNavigator with LoginViewRoute {}

mixin HomeViewRoute {
  openHomeView() {
    NavigateRoute.popAndPushRoute(const HomeView());
  }
}
