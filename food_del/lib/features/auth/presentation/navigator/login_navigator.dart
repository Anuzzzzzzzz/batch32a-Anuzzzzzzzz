import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_del/app/navigator/navigator.dart';
import 'package:food_del/features/auth/presentation/navigator/register_navigator.dart';
import 'package:food_del/features/auth/presentation/view/login_view.dart';

import 'package:food_del/features/home/presentation/navigator/home_view_navigator.dart';

final loginViewNavigatorProvider = Provider((ref) => LoginViewNavigator());

class LoginViewNavigator
    with RegisterViewRoute, HomeViewRoute {}

mixin LoginViewRoute {
  openLoginView() {
    NavigateRoute.popAndPushRoute(const LoginView());
  }
}
