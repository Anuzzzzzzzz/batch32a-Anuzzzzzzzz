import 'package:ebuy/app/navigator/navigator.dart';
import 'package:ebuy/features/auth/presentation/navigator/register_navigator.dart';
import 'package:ebuy/features/auth/presentation/view/login_view.dart';
import 'package:ebuy/features/home/presentation/navigator/home_view_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginViewNavigatorProvider = Provider((ref) => LoginViewNavigator());

class LoginViewNavigator with RegisterViewRoute, HomeViewRoute {}

mixin LoginViewRoute {
  openLoginView() {
    NavigateRoute.popAndPushRoute(const LoginView());
  }
}
