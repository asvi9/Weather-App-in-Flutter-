import 'package:flutter/material.dart';
import 'package:weather/theme/pallete.dart';

// AppTheme class to define light and dark themes using Material3.
class AppTheme {

  // Dark theme configuration using ThemeData with customized colors and styles.
  static ThemeData darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    // Custom color scheme for dark mode using PalleteDark constants.
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: PalleteDark.primaryColor,       // Primary color for the app.
      onPrimary: PalleteDark.primaryColor,     // Text color on primary color.
      secondary: PalleteDark.secondaryColor,   // Secondary color for accents.
      onSecondary: PalleteDark.secondaryColor, // Text color on secondary color.
      error: Colors.red,                       // Error color.
      onError: Colors.red,                     // Text color on error.
      background: Colors.white30,              // Background color.
      onBackground: PalleteDark.secondaryColor,// Text color on background.
      surface: Colors.black54,                 // Surface color.
      onSurface: Colors.black12,               // Text color on surface.
    ),

    // Background color for scaffold widgets (e.g., screens).
    scaffoldBackgroundColor: PalleteDark.primaryColor,

    // Custom AppBar theme for dark mode.
    appBarTheme: const AppBarTheme(
      backgroundColor: PalleteDark.primaryColor,
      elevation: 0,                            // Removes shadow from the AppBar.
    ),

    // Custom BottomSheet theme.
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: PalleteDark.primaryColor,
    ),

    // Custom icon color.
    iconTheme: const IconThemeData(
      color: PalleteDark.activeTextColor,
    ),

    // Custom TabBar theme with a gradient indicator.
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(50), // Rounded tab indicator.
        gradient: const LinearGradient(
          colors: [
            PalleteDark.gradiantFromColor,
            PalleteDark.gradiantToColor,
          ],
        ),
      ),
    ),

    // Custom text styles using the Poppins font and different sizes.
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontFamily: "Poppins",
        color: PalleteDark.activeTextColor,
        fontSize: 70,
      ),
      headlineLarge: const TextStyle(
        fontFamily: "Poppins",
        color: PalleteDark.activeTextColor,
        fontSize: 25,
      ),
      bodyLarge: const TextStyle(
        fontFamily: "Poppins",
        color: PalleteDark.activeTextColor,
        fontSize: 18,
      ),
      bodyMedium: const TextStyle(
        fontFamily: "Poppins",
        color: PalleteDark.activeTextColor,
        fontSize: 16,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        color: PalleteDark.inactiveTextColor,
        fontSize: 12,
      ),
    ),
  );

  // Light theme configuration similar to darkTheme, using PalleteLight for colors.
  static ThemeData lightTheme = ThemeData.dark(useMaterial3: true).copyWith(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: PalleteLight.primaryColor,
      onPrimary: PalleteLight.primaryColor,
      secondary: PalleteLight.secondaryColor,
      onSecondary: PalleteLight.secondaryColor,
      error: Colors.red,
      onError: Colors.red,
      background: PalleteLight.secondaryColor,
      onBackground: PalleteLight.secondaryColor,
      surface: Color(0xffcbc0d3),
      onSurface: PalleteLight.gradiantToColor,
    ),

    // Background color for scaffold widgets in light mode.
    scaffoldBackgroundColor: PalleteLight.primaryColor,

    // Light mode AppBar theme.
    appBarTheme: const AppBarTheme(
      backgroundColor: PalleteLight.primaryColor,
      elevation: 0,
    ),

    // Light mode BottomSheet theme.
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: PalleteLight.primaryColor,
    ),

    // Light mode icon theme.
    iconTheme: const IconThemeData(
      color: PalleteLight.iconColor,
    ),

    // TabBar theme with a gradient indicator for light mode.
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: const LinearGradient(
          colors: [
            PalleteLight.gradiantFromColor,
            PalleteLight.gradiantToColor,
          ],
        ),
      ),
    ),

    // Light mode text styles using Poppins font and specific colors.
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontFamily: "Poppins",
        color: PalleteLight.activeTextColor,
        fontSize: 70,
      ),
      headlineLarge: const TextStyle(
        fontFamily: "Poppins",
        color: PalleteLight.activeTextColor,
        fontSize: 25,
      ),
      bodyLarge: const TextStyle(
        fontFamily: "Poppins",
        color: PalleteLight.activeTextColor,
        fontSize: 18,
      ),
      bodyMedium: const TextStyle(
        fontFamily: "Poppins",
        color: PalleteLight.activeTextColor,
        fontSize: 16,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        color: PalleteLight.inactiveTextColor,
        fontSize: 12,
      ),
    ),
  );
}
