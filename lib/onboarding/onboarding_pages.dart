import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uni_pace/auth_screen/signup.dart';
import 'pages.dart';
// import 'splash_screen.dart';

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({Key? key}) : super(key: key);

  @override
  _OnboardingPagesState createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  int currentPage = 0; // Track the current page index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Container
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background/onboardingscreen.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // PageView
          PageView(
            onPageChanged: (index) {
              setState(() {
                currentPage = index; // Update the current page index
              });
            },
            children: [
              Onboarding1(),
              Onboarding2(),
              Onboarding3(),
            ],
          ),

          // Column(
          //   children: [
          //     SizedBox(width: 0.0, height: 500.0),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       // crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Container(
          //           margin: EdgeInsets.only(right: 5),
          //           width: 12,
          //           height: 12,
          //           decoration: BoxDecoration(
          //             color: Color(0xFFFFD600),
          //             borderRadius: BorderRadius.circular(20),
          //           ),
          //         ),
          //         Container(
          //           margin: EdgeInsets.only(right: 5),
          //           width: 10,
          //           height: 10,
          //           decoration: BoxDecoration(
          //             color: Color(0xFFD9D9D9), //D9D9D9
          //             borderRadius: BorderRadius.circular(20),
          //           ),
          //         ),
          //         Container(
          //           margin: EdgeInsets.only(right: 5),
          //           width: 10,
          //           height: 10,
          //           decoration: BoxDecoration(
          //             color: Color(0xFFD9D9D9), //D9D9D9
          //             borderRadius: BorderRadius.circular(20),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // Dots Indicator
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Padding(
          //     padding: const EdgeInsets.only(bottom: 40.0),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         buildDot(currentPage == 0), // Dot for first page
          //         buildDot(currentPage == 1), // Dot for second page
          //         buildDot(currentPage == 2), // Dot for third page
          //       ],
          //     ),
          //   ),
          // ),

          Column(children: [
            SizedBox(width: 0.0, height: 500.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildDot(currentPage == 0), // Dot for first page
                  buildDot(currentPage == 1), // Dot for second page
                  buildDot(currentPage == 2), // Dot for third page
                ]),
          ]),

          Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 0.0, height: 550.0),
                ElevatedButton(
                  style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(Size(280, 60)),
                      backgroundColor:
                          WidgetStateProperty.all(Color(0xFFFFD600))),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 0.0, height: 17.0),
                ElevatedButton(
                  style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(Size(280, 60)),
                      backgroundColor:
                          WidgetStateProperty.all(Color(0xFFFFF4B9))),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff867100),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
// }

// Onboarding1, Onboarding2, and Onboarding3 classes remain the same
  Widget buildDot(bool isActive) {
    // Customize dot appearance based on isActive
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: isActive ? 12 : 10,
      height: isActive ? 12 : 10,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFFFD600) : Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
