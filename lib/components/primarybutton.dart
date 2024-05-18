import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Primarybutton extends StatelessWidget {
  final String ButtonText;
  const Primarybutton({Key? key, required this.ButtonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: WidgetStateProperty.all(const Size(280, 60)),
          backgroundColor: WidgetStateProperty.all(const Color(0xFFFFD600))),
      onPressed: () {
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(builder: (context) => Login()),
        // );
      },
      child: Text(
        ButtonText,
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
