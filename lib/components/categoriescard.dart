import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesCard extends StatelessWidget {
  final String categoryIcon;
  final String categoryName;
  const CategoriesCard({
    Key? key,
    required this.categoryIcon,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      padding: EdgeInsets.all(5),
      // color: Color(0xFFFFD600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFFFFD600),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                //Category Icon name pass here
                image: AssetImage("assets/icons/$categoryIcon"),
              ),
            ),
          ),
          Text(
            //category name pass here
            categoryName,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.montserrat(
                fontSize: 11, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
