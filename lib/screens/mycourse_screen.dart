import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uni_pace/components/bottomNavBar.dart';

class MycourseScreen extends StatelessWidget {
  const MycourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Text(
                  "My Courses",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // SearchBar(),
              TextField(
                decoration: InputDecoration(
                  // contentPadding:
                  // EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: const Color.fromARGB(75, 0, 0, 0)),
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
      body: Text(""),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
