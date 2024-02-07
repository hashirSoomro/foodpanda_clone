import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textTile extends StatefulWidget {
  String text;
  textTile({
    super.key,
    required this.text,
  });

  @override
  State<textTile> createState() => _textTileState();
}

class _textTileState extends State<textTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
        ),
      ),
    );
  }
}
