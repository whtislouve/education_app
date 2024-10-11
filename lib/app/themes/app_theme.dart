import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color.fromRGBO(78, 116, 250, 1),
        onPrimary: Color.fromRGBO(255, 255, 255, 1),
        secondary: Color.fromRGBO(126, 140, 160, 1),
        onSecondary: Color.fromRGBO(0, 0, 0, 1),
        error: Color.fromARGB(255, 255, 255, 255),
        onError: Color.fromRGBO(255, 1, 1, 1),
        surface: Color.fromRGBO(255, 255, 255, 1),
        onSurface: Color.fromRGBO(0, 0, 0, 1),
      ),
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: screenHeight * 0.03,
          height: 1,
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: screenHeight * 0.021,
        ),
        titleSmall: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: screenHeight * 0.018,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: WidgetStateProperty.all(
            TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: screenHeight * 0.018,
            ),
          ),
        ),
      ),
      useMaterial3: true,
    );
  }
}
