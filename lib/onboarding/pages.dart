import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class Onboarding1 extends StatelessWidget {
//   const Onboarding1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Container(
//           //   width: double.infinity,
//           //   height: double.infinity,
//           //   decoration: BoxDecoration(
//           //     image: DecorationImage(
//           //       image: AssetImage("assets/background/onboardingscreen.png"),
//           //       fit: BoxFit.cover,
//           //     ),
//           //   ),
//           // ),
//           Center(
//             child: Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(top: 100),
//                   width: 340,
//                   height: 250,
//                   // decoration: BoxDecoration(
//                   //   image: DecorationImage(
//                   //     image:
//                   //         SvgPicture.asset("assets/pictures/onboarding1.svg"),
//                   //     fit: BoxFit.contain,
//                   //   ),
//                   //   // border: Border.all(
//                   //   //   color: Colors.black,
//                   //   //   width: 1.0,
//                   //   // ),
//                   //   borderRadius: BorderRadius.circular(10),
//                   // ),
//                   child: SvgPicture.asset("assets/pictures/onboarding1.svg"),
//                 ),
//                 Column(
//                   children: [
//                     SizedBox(width: 0.0, height: 50.0),
//                     Text(
//                       "Welcome to Uni Pace",
//                       style: GoogleFonts.montserrat(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       "Learn at your own pace",
//                       style: GoogleFonts.montserrat(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Onboarding1 extends StatelessWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.transparent, // Make Scaffold background transparent
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  width: 340,
                  height: 250,
                  child: SvgPicture.asset("assets/pictures/onboarding1.svg"),
                ),
                Column(
                  children: [
                    SizedBox(width: 0.0, height: 50.0),
                    Text(
                      "Welcome to Uni Pace",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Learn at your own pace",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Repeat similar changes for Onboarding2 and Onboarding3

class Onboarding2 extends StatelessWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.transparent, // Make Scaffold background transparent
      body: Stack(
        children: [
          // Container(
          //   width: double.infinity,
          //   height: double.infinity,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage("assets/background/onboardingscreen.png"),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  width: 340,
                  height: 250,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image:
                  //         SvgPicture.asset("assets/pictures/onboarding1.svg"),
                  //     fit: BoxFit.contain,
                  //   ),
                  //   // border: Border.all(
                  //   //   color: Colors.black,
                  //   //   width: 1.0,
                  //   // ),
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  child: SvgPicture.asset("assets/pictures/onboarding2.svg"),
                ),
                Column(
                  children: [
                    SizedBox(width: 0.0, height: 50.0),
                    Text(
                      "Personalized Learning",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Craft Your Study Journey",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Onboarding3 extends StatelessWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.transparent, // Make Scaffold background transparent
      body: Stack(
        children: [
          // Container(
          //   width: double.infinity,
          //   height: double.infinity,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage("assets/background/onboardingscreen.png"),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  width: 340,
                  height: 250,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image:
                  //         SvgPicture.asset("assets/pictures/onboarding1.svg"),
                  //     fit: BoxFit.contain,
                  //   ),
                  //   // border: Border.all(
                  //   //   color: Colors.black,
                  //   //   width: 1.0,
                  //   // ),
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  child: SvgPicture.asset("assets/pictures/onboarding3.svg"),
                ),
                Column(
                  children: [
                    SizedBox(width: 0.0, height: 50.0),
                    Text(
                      "Achieve Your Goals",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Unlock Your Potential",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
