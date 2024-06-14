import 'package:food_del/app/navigator/navigator.dart';
import 'package:food_del/features/auth/presentation/view/register_view.dart';

//route
class RegisterViewNavigator{}

//mixin
mixin RegisterViewRoute {
  openRegisterView(){
    NavigateRoute.pushRoute(const RegisterView());
  }
}