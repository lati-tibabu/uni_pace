import 'package:flutter/material.dart';
import 'onboarding/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Set the primarySwatch property for a more complete color scheme
        primarySwatch: Colors.blue,
        primaryColor: Color(0xffFFD600), // Set your custom accent color
      ),
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(), // Start with SplashScreen
      home: SplashScreen(),
    );
  }
}
