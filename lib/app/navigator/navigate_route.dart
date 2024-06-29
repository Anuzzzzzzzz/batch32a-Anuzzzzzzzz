import 'package:flutter/material.dart';

class NavigateRoute {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static void popAndPushRoute(Widget widget) {
    if (navigatorKey.currentState != null) {
      navigatorKey.currentState!
          .pushReplacement(MaterialPageRoute(builder: (_) => widget));
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        navigatorKey.currentState
            ?.pushReplacement(MaterialPageRoute(builder: (_) => widget));
      });
    }
  }

  static void pushRoute(Widget widget) {
    if (navigatorKey.currentState != null) {
      navigatorKey.currentState!
          .push(MaterialPageRoute(builder: (_) => widget));
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        navigatorKey.currentState
            ?.push(MaterialPageRoute(builder: (_) => widget));
      });
    }
  }

  static void pop() {
    if (navigatorKey.currentState != null) {
      navigatorKey.currentState!.pop();
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        navigatorKey.currentState?.pop();
      });
    }
  }
}
