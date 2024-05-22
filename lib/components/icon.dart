import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UIcon extends StatelessWidget {
  final double iconWidth;
  final double iconHeight;
  final String iconName;
  const UIcon({
    Key? key,
    required this.iconWidth,
    required this.iconHeight,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: iconWidth,
      height: iconHeight,
      child: SvgPicture.asset("assets/icons/$iconName"),
    );
  }
}
