import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
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
            icon: Icon(Icons.search), // You can use Icons.lens for a lens icon
            onPressed: () {
              // Handle search button press
            },
          ),
        ),
      ),
    );
  }
}
