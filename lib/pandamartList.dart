import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class pandamartSlide extends StatefulWidget {
  const pandamartSlide({super.key});

  @override
  State<pandamartSlide> createState() => _pandamartSlideState();
}

class _pandamartSlideState extends State<pandamartSlide> {
  List martImages = [
    "assets/images/bakery.jpg",
    "assets/images/beverages.jpg",
    "assets/images/dairy.jpg",
    "assets/images/edible.jpg",
    "assets/images/icecream_desert.jpg"
  ];
  List mart = [
    "Bakery",
    "Beverages",
    "Dairy Products",
    "Edible-Grocery",
    "Ice Cream &\nDesserts"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: ((context, index) {
          return Column(children: [
            InkWell(
              onTap: () {},
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 6, right: 6),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(martImages[index]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.transparent),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      mart[index],
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
            )
          ]);
        }));
  }
}
