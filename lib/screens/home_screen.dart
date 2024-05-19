import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uni_pace/components/textfield.dart';

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
              Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(116, 0, 0, 0),
                        blurRadius: 3,
                        offset: Offset(0, 5)),
                  ],
                  color: const Color.fromARGB(255, 255, 247, 224),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 95,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/pictures/course_thumbnail/topcourse_image1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // child: Widget(),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Introduction to Programming",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              Text(
                                "4.5 Star",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF000000),
                                ),
                              )
                            ],
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            "Published in 2023",
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sarah Johnson",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              Text(
                                "500 Registered",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF000000),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
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
