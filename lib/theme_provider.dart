import 'package:flutter_riverpod/flutter_riverpod.dart';

// This state provider holds the boolean state of the theme (true for dark, false for light)
final isDarkThemeProvider = StateProvider<bool>((ref) => false);
