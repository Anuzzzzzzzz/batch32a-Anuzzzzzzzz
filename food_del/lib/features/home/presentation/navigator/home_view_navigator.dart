import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_del/app/navigator/navigator.dart';
import 'package:food_del/features/auth/presentation/navigator/login_navigator.dart';
import 'package:food_del/features/home/presentation/view/home_view.dart';

final homeViewNavigatorProvider = Provider<HomeViewNavigator>((ref) {
  return HomeViewNavigator();
});

class HomeViewNavigator with LoginViewRoute {}

mixin HomeViewRoute {
  openHomeView() {
    NavigateRoute.popAndPushRoute(const HomeView());
  }
}
