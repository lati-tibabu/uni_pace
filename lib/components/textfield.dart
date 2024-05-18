import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfield extends StatelessWidget {
  final String hintName;

  const Textfield({Key? key, required this.hintName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFD8B600),
          width: 1,
        ),
      ),
      child: Center(
        child: TextField(
          // obscureText: true,
          style: GoogleFonts.montserrat(
              fontSize: 14,
              color: const Color.fromARGB(255, 67, 55, 0),
              fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            hintText: hintName, //hintName shoud come here as argument
            hintStyle: TextStyle(
              fontSize: 16,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
