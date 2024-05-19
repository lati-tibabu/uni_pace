import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uni_pace/components/textfield.dart';
import 'package:uni_pace/components/topcoursecard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Text("Home Screen"),
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Color(0xFFFFD600),
        // elevation: 0,
        title: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome, John Doe!",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/pictures/user_avatar.png"),
                      ),
                    ),
                    // child: Widget(),
                  )
                ],
              ),
              SizedBox(height: 10),
              // const Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     // Textfield(hintName: "Search Courses...", obscure: false)
              //     TextField(
              //       decoration: InputDecoration(
              //         hintText: "Search Courses...",
              //       ),
              //     )
              //   ],
              // ),
              // SizedBox(height: 10),
              // Text("Home Screen"),

              TextField(
                decoration: InputDecoration(
                  // contentPadding:
                  // EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  hintText: "Search Courses...",
                  hintStyle: GoogleFonts.montserrat(),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  suffixIcon: Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFD600),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: IconButton(
                      color: Color.fromARGB(255, 0, 0, 0),
                      icon: Icon(Icons
                          .search), // You can use Icons.lens for a lens icon
                      onPressed: () {
                        // Handle search button press
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          //top courses section
          Column(
            children: [
              Text(
                "Top Courses",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding:
                    EdgeInsets.only(left: 20, top: 10, right: 10, bottom: 10),
                child: Row(
                  children: [
                    TopCourseCard(
                      thumbnail: "topcourse_image1.jpg",
                      courseName: "Introduction to Programming",
                      publisher: "Sarah Johnson",
                      publishedYear: "2024",
                      rate: "4.5",
                      reviewNo: "129",
                      registeredUser: "500",
                      context: context,
                    ),
                    SizedBox(width: 10, height: 0.0),
                    TopCourseCard(
                      thumbnail: "topcourse_image2.jpg",
                      courseName: "Basic Web Development",
                      publisher: "Michael Smith",
                      publishedYear: "2022",
                      rate: "4.8",
                      reviewNo: "86",
                      registeredUser: "700",
                      context: context,
                    ),
                    SizedBox(width: 10, height: 0.0),
                    TopCourseCard(
                      thumbnail: "topcourse_image3.jpg",
                      courseName: "Machine Learning Fundamentals",
                      publisher: "Emily Chen",
                      publishedYear: "2024",
                      rate: "4.9",
                      reviewNo: "159",
                      registeredUser: "850",
                      context: context,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
