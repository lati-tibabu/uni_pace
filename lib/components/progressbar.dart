import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Progressbar extends StatelessWidget {
  final double barWidth;
  final double barHeight;
  final Color progressColor;
  final int progressPercent;
  const Progressbar({
    Key? key,
    required this.barWidth,
    required this.barHeight,
    required this.progressColor,
    required this.progressPercent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: barWidth,
          height: barHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xFF4B3B00),
              width: 0.5,
            ),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: progressPercent / 100,
            child: Container(
              // width: 100,
              height: barHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: progressColor,
              ),
            ),
          ),
        ),
        SizedBox(width: 5, height: 0.0),
        Text(
          (progressPercent.toString()) + "%",
          style: GoogleFonts.montserrat(
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}
