import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_del/features/auth/presentation/navigator/login_navigator.dart';

final splashViewNavigatorProvider = Provider <SplashViewNavigator> ((ref)=> SplashViewNavigator());

//this class will be used to navigate to LoginView
class SplashViewNavigator with LoginViewRoute{}

mixin SplashViewRoute{}
