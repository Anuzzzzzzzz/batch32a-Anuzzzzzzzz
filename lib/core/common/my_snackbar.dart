import 'package:ebuy/app/navigator_key/navigator_key.dart';
import 'package:flutter/material.dart';

void showMySnackBar({required String message, Color? color}) {
  ScaffoldMessenger.of(AppNavigator.navigatorKey.currentState!.context)
      .showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: color ?? const Color(0xFF57447A),
      duration: const Duration(seconds: 1),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
