import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopsSlide extends StatefulWidget {
  const ShopsSlide({super.key});

  @override
  State<ShopsSlide> createState() => _ShopsSlideState();
}

class _ShopsSlideState extends State<ShopsSlide> {
  List shopsImages = [
    "assets/images/convenience.jpg",
    "assets/images/groceries.jpg",
    "assets/images/health.jpg",
    "assets/images/household.jpg",
    "assets/images/electronics.jpg"
  ];
  List shops = [
    "Convenience",
    "Groceries",
    "Health &\nWellbeing",
    "Household &\nLiving",
    "Electronics"
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
                          image: AssetImage(shopsImages[index]),
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
                      shops[index],
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
