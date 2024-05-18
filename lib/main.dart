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
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(), // Start with SplashScreen
      home: Login(),
    );
  }
}
