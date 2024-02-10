import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtherHomeCard extends StatefulWidget {
  String heading;
  String text;
  String image;
  OtherHomeCard(
      {super.key,
      required this.heading,
      required this.image,
      required this.text});

  @override
  State<OtherHomeCard> createState() => _OtherHomeCardState();
}

class _OtherHomeCardState extends State<OtherHomeCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white,
      surfaceTintColor: Colors.white,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.heading,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 1.2,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.text,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      height: 1.2,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 5,
            ),
            Image.asset(widget.image, width: 40, height: 35)
          ],
        ),
      ),
    );
  }
}
