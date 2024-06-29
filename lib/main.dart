import 'package:ebuy/app/navigator/navigate_route.dart';
import 'package:ebuy/app/themes/app_theme.dart';
import 'package:ebuy/core/networking/local/hive_service.dart';
import 'package:ebuy/features/splash/presentation/view/splash_view.dart';
import 'package:ebuy/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService().init();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(isDarkThemeProvider);

    return MaterialApp(
      navigatorKey: NavigateRoute.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Ebuy',
      theme: AppTheme.getApplicationTheme(false),
      darkTheme: AppTheme.getApplicationTheme(true),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: const SplashView(),
    );
  }
}
