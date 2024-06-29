import 'package:ebuy/app/navigator/navigator.dart';
import 'package:ebuy/features/auth/presentation/view/register_view.dart';

//route
class RegisterViewNavigator {}

//mixin
mixin RegisterViewRoute {
  openRegisterView() {
    NavigateRoute.pushRoute(const RegisterView());
  }
}
