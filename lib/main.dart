// import 'package:flutter/material.dart';
// import 'onboarding/splash_screen.dart';
// import 'onboarding/pages.dart';
// import 'onboarding/onboarding_pages.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: OnboardingPages(),
//       // home: SplashScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:uni_pace/auth_screen/login.dart';
import 'package:uni_pace/auth_screen/signup.dart';
import 'onboarding/splash_screen.dart';
import 'onboarding/onboarding_pages.dart';

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
