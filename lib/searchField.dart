import 'package:flutter/material.dart';
import 'package:foodpanda_clone/circleIcon.dart';
import 'package:foodpanda_clone/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: false,
        cursorColor: myColour[500],
        decoration: InputDecoration(
          prefixIcon:
              CircleIcon(img: "assets/icons/search.png", onPressed: () {}),
          prefixIconColor: Colors.black,
          prefixIconConstraints: const BoxConstraints(),
          focusColor: Colors.white,
          filled: true,
          fillColor: Colors.white,
          hintText: "Search for shops & restaurants",
          hintStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF002055),
          ),
        ));
  }
}
