import 'package:flutter/material.dart';
import 'package:weather/screens/home_page.dart';
import 'package:weather/theme/app_theme.dart';

// App ka entry point, main function se execution start hoti hai.
void main() {
  runApp(const MyApp()); // MyApp widget ko run kar raha hai.
}

// MyApp ek StatelessWidget hai jo MaterialApp ka root widget provide karta hai.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App', // App ka title
      debugShowCheckedModeBanner: false, // Debug banner ko hide karta hai
      themeMode: ThemeMode.system, // Device ke theme mode (light/dark) ke hisaab se set karta hai
      theme: AppTheme.lightTheme, // Light theme ka reference
      darkTheme: AppTheme.darkTheme, // Dark theme ka reference
      home: const HomePage(), // App ka initial screen, HomePage widget load karta hai
    );
  }
}
