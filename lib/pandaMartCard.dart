import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PandaMartCard extends StatefulWidget {
  const PandaMartCard({super.key});

  @override
  State<PandaMartCard> createState() => _PandaMartCardState();
}

class _PandaMartCardState extends State<PandaMartCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white,
      surfaceTintColor: Colors.white,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "pandamart",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Essentials delivered\nfast",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset("assets/images/pandamart.jpg",
                width: MediaQuery.of(context).size.width * 0.4, height: 60)
          ],
        ),
      ),
    );
  }
}
