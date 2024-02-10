import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class drawerTile extends StatefulWidget {
  String image;
  String text;
  double width;
  double height;
  drawerTile(
      {super.key,
      required this.image,
      required this.text,
      required this.width,
      required this.height});

  @override
  State<drawerTile> createState() => _drawerTileState();
}

class _drawerTileState extends State<drawerTile> {
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
              Image.asset(
                widget.image,
                width: widget.width,
                height: widget.height,
              ),
              const SizedBox(
                width: 30,
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
        ),
      ),
    );
  }
}
