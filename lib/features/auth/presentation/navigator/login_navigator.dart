import 'package:ebuy/app/navigator/navigate_route.dart';
import 'package:ebuy/features/auth/presentation/view/register_view.dart';
import 'package:ebuy/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginViewNavigator {
  final GlobalKey<NavigatorState> navigatorKey;

  LoginViewNavigator(this.navigatorKey);

  void openHomeView() {
    NavigateRoute.popAndPushRoute(const HomeView());
  }

  void openRegisterView() {
    NavigateRoute.pushRoute(const RegisterView());
  }
}

final loginViewNavigatorProvider = Provider<LoginViewNavigator>((ref) {
  return LoginViewNavigator(NavigateRoute.navigatorKey);
});
