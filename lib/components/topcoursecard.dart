import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCourseCard extends StatelessWidget {
  final String thumbnail;
  final String courseName;
  final String publisher;
  final String publishedYear;
  final String rate;
  final String reviewNo;
  final String registeredUser;
  const TopCourseCard({
    super.key,
    required this.thumbnail,
    required this.courseName,
    required this.publisher,
    required this.publishedYear,
    required this.rate,
    required this.reviewNo,
    required this.registeredUser,
    required BuildContext context,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 220,
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(56, 0, 0, 0),
              blurRadius: 3,
              offset: Offset(0, 5)),
        ],
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Container(
            // width: double.infinity,
            width: 390,
            height: 95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image:
                    AssetImage("assets/pictures/course_thumbnail/$thumbnail"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.all(5),
              width: double.maxFinite,
              // height: ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 220,
                        // height: 20,
                        child: Column(
                          children: [
                            Text(
                              softWrap: true,
                              // overflow: TextOverflow.fade,
                              // "Introduction to Programming",
                              //course name pass here
                              courseName,
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                textAlign: TextAlign.start,
                                // "Published in 2023",
                                //course published year pass here
                                publishedYear,
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF4E4E4E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/icons/star.png"))),
                          ),
                          Text(
                            //rate and numbers of reviews pass here
                            "$rate($reviewNo)",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF4E4E4E),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        // "Sarah Johnson",
                        publisher,
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF4E4E4E),
                        ),
                      ),
                      Text(
                        //number of total registered users pass here
                        "$registeredUser Registered",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF04E4E4E),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
