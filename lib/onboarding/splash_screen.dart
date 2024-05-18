// import 'package:flutter/material.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: AppBar(
//         //   title: const Text('Title'),
//         // ),
//         body: Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage("assets/background/splash.png"),
//                   fit: BoxFit.cover)),
//           // child: Text("This is tesrt2"),
//         ),
//         Center(
//           child: Container(
//             width: 220,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage("assets/logo/primary_logo.png"),
//                     fit: BoxFit.contain)),
//           ),
//         )
//       ],
//     ));
//   }
// }

import 'package:flutter/material.dart';
import 'dart:async';

import 'onboarding_pages.dart'; // Import dart:async for Future.delayed

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Wait for 2 seconds before navigating to OnboardingPages
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingPages()),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background/splash.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo/primary_logo.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
