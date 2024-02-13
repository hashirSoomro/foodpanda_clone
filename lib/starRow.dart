import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StarRow extends StatelessWidget {
  const StarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Image(
          image: AssetImage("assets/icons/star.png"),
          height: 10,
          width: 10,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          "4.4",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 1.2,
            ),
          ),
        ),
        Text(
          "(5000+)",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              height: 1.2,
            ),
          ),
        ),
      ],
    );
  }
}
