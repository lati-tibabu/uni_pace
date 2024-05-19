import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uni_pace/components/categoriescard.dart';
import 'package:uni_pace/components/mylearningcard.dart';
import 'package:uni_pace/components/progressbar.dart';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //top courses section
            Column(
              children: [
                Container(
                  // color: Colors.red,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 25),
                  child: Text(
                    "Top Courses",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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
            ),

            SizedBox(width: 0.0, height: 10.0),
            //Categories Section

            Column(
              children: [
                Container(
                  // color: Colors.red,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 25),
                  child: Text(
                    "Categories",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(5),
                  // color: Colors.red.shade200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CategoriesCard(
                        categoryIcon: "computer.png",
                        categoryName: "Tech",
                      ),
                      SizedBox(width: 10, height: 0.0),
                      CategoriesCard(
                        categoryIcon: "suitcase.png",
                        categoryName: "Business",
                      ),
                      SizedBox(width: 10, height: 0.0),
                      CategoriesCard(
                        categoryIcon: "pallete.png",
                        categoryName: "Art & Design",
                      ),
                      SizedBox(width: 10, height: 0.0),
                      Container(
                        width: 85,
                        height: 85,
                        padding: EdgeInsets.all(5),
                        // color: Color(0xFFFFD600),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          // color: Color.fromARGB(255, 255, 243, 180),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 20,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  //Category Icon name pass here
                                  image:
                                      AssetImage("assets/icons/leftarrow2.png"),
                                ),
                              ),
                            ),
                            Text(
                              //category name pass here
                              "View More",
                              softWrap: true,

                              textAlign: TextAlign.center,
                              // maxLines: 1,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 0.0, height: 10.0),

                //My Learning Section

                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // color: Colors.red,
                            // width: double.infinity,
                            margin: EdgeInsets.only(left: 25, right: 10),
                            child: Text(
                              "MyLearnigs",
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // SizedBox(width: 150, height: 0.0),
                          Row(
                            children: [
                              Text(
                                "View all",
                                style: GoogleFonts.montserrat(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: 25,
                                height: 11,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    //Category Icon name pass here
                                    image: AssetImage(
                                        "assets/icons/leftarrow2.png"),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: const Column(
                        children: [
                          Mylearningcard(
                              courseThumbnail: "mycourse_image1.jpg",
                              courseName: "Digital Marketing Fundamentals",
                              progressbar: Progressbar(
                                  barWidth: 200,
                                  barHeight: 7,
                                  progressColor: Color(0xFFFFD600),
                                  progressPercent: 50),
                              startingDate: "April 20, 2023"),
                          SizedBox(width: 0.0, height: 5.0),
                          Mylearningcard(
                            courseThumbnail: "mycourse_image2.png",
                            courseName: "Graphic Design Essentials",
                            progressbar: Progressbar(
                              barWidth: 200,
                              barHeight: 7,
                              progressColor: Color(0xFFFFD600),
                              progressPercent: 80,
                            ),
                            startingDate: "May 20, 2020",
                          ),
                          SizedBox(width: 0.0, height: 5.0),
                          Mylearningcard(
                            courseThumbnail: "mycourse_image3.png",
                            courseName: "Introduction to Python Programming",
                            progressbar: Progressbar(
                              barWidth: 200,
                              barHeight: 7,
                              progressColor: Color(0xFFFFD600),
                              progressPercent: 95,
                            ),
                            startingDate: "May 20, 2024",
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
