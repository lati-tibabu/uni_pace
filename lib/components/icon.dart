// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class UIcon extends StatelessWidget {
//   final double iconWidth;
//   final double iconHeight;
//   final String iconName;
//   const UIcon({
//     Key? key,
//     required this.iconWidth,
//     required this.iconHeight,
//     required this.iconName,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: iconWidth,
//       height: iconHeight,
//       child: SvgPicture.asset("assets/icons/$iconName"),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uni_pace/onboarding/splash_screen.dart';
import 'package:uni_pace/screens/mycourse_screen.dart';

class UIcon extends StatelessWidget {
  final double iconWidth;
  final double iconHeight;
  final String iconName;
  final WidgetBuilder destinationScreen;

  const UIcon({
    Key? key,
    required this.iconWidth,
    required this.iconHeight,
    required this.iconName,
    required this.destinationScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          // MaterialPageRoute(builder: (context) => MycourseScreen()),
          // MaterialPageRoute(builder: destinationScreen),
          MaterialPageRoute(builder: destinationScreen),
        );
      },
      child: Container(
        width: iconWidth,
        height: iconHeight,
        child: SvgPicture.asset("assets/icons/$iconName"),
      ),
    );
  }
}
