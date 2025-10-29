import 'package:flutter/material.dart';
import 'screens/onboarding_screen.dart';
import 'colors.dart';

void main() {
  runApp(NutritionApp());
}

class NutritionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NutriTrack',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color(0xFF69DC9E), // hijau muda
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF26846E), // hijau tua
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.grey[800]),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          fillColor: Color(0xFFF4F4F4), // abu-abu muda
          filled: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF69DC9E), // hijau muda
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
            foregroundColor: Colors.white,
          ),
        ),
      ),

      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
