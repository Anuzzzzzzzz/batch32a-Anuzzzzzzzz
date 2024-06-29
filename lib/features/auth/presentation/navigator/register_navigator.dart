import 'package:ebuy/app/navigator/navigator.dart';
import 'package:ebuy/features/auth/presentation/view/login_view.dart';
import 'package:ebuy/features/auth/presentation/view/register_view.dart';

class RegisterViewNavigator {}

mixin RegisterViewRoute {
  void openRegisterView() {
    NavigateRoute.pushRoute(const RegisterView());
  }

  // Example of another navigation method
  void navigateToLoginView() {
    NavigateRoute.pushRoute(const LoginView());
  }

  // You can add more methods here as per your app's navigation requirements
}
