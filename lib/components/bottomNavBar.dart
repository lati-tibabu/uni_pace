import 'package:flutter/material.dart';
import 'package:uni_pace/components/icon.dart';
import 'package:uni_pace/screens/home_screen.dart';
import 'package:uni_pace/screens/mycourse_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Color(0xFFFFFEDB),
      child: Container(
        margin: EdgeInsets.only(left: 50, right: 50),
        // color: Colors.red,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 30,
                  height: 5,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UIcon(
                  iconWidth: 30,
                  iconHeight: 30,
                  iconName: "Vectorhome.svg",
                  destinationScreen: (context) => HomeScreen(),
                ),
                SizedBox(
                  width: 20,
                ),
                UIcon(
                  iconWidth: 20,
                  iconHeight: 20,
                  iconName: "Vectorbooks.svg",
                  destinationScreen: (context) => MycourseScreen(),
                ),
                SizedBox(
                  width: 20,
                ),
                UIcon(
                  iconWidth: 20,
                  iconHeight: 20,
                  iconName: "Vectorlens.svg",
                  destinationScreen: (context) => HomeScreen(),
                ),
                SizedBox(
                  width: 20,
                ),
                UIcon(
                  iconWidth: 20,
                  iconHeight: 20,
                  iconName: "Vectorbell.svg",
                  destinationScreen: (context) => HomeScreen(),
                ),
                SizedBox(
                  width: 20,
                ),
                UIcon(
                  iconWidth: 20,
                  iconHeight: 20,
                  iconName: "Vectorcomment.svg",
                  destinationScreen: (context) => HomeScreen(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
