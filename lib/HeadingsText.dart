import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingsText extends StatefulWidget {
  String text;
  HeadingsText({super.key, required this.text});

  @override
  State<HeadingsText> createState() => _HeadingsTextState();
}

class _HeadingsTextState extends State<HeadingsText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                height: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
