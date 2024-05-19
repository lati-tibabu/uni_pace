import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uni_pace/components/progressbar.dart';

class Mylearningcard extends StatelessWidget {
  final String courseThumbnail;
  final String courseName;
  final Progressbar progressbar;
  final String startingDate;
  const Mylearningcard({
    Key? key,
    required this.courseThumbnail,
    required this.courseName,
    required this.progressbar,
    required this.startingDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 186, 186, 186).withOpacity(0.5),
            // spreadRadius: 5,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(
                    "assets/pictures/course_thumbnail/$courseThumbnail"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20, height: 0.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 230,
                height: 30,
                // color: Colors.blue.shade500,
                child: Text(
                  // "Digital Marketing Fundamentals",
                  courseName,
                  // overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              // Progressbar(
              //   barWidth: 180,
              //   barHeight: 7,
              //   progressColor: Color(0xFFFFD600),
              //   progressPercent: 90,
              // ),
              progressbar,
              SizedBox(height: 5),
              Text(
                "Started $startingDate",
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
