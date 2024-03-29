import 'package:flutter/material.dart';
import 'package:foodpanda_clone/starRow.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantSlider extends StatefulWidget {
  const RestaurantSlider({super.key});

  @override
  State<RestaurantSlider> createState() => _RestaurantSliderState();
}

class _RestaurantSliderState extends State<RestaurantSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 150,
      margin: const EdgeInsets.only(right: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Column(
          children: [
            Container(
              height: 104,
              width: 210,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/burger.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.transparent),
              ),
            ),
            SizedBox(
              height: 55,
              width: 210,
              child: Column(
                children: [
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "KFC - Mega Mall",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            height: 1.2,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const StarRow()
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "\$\$ . PKR 249 minimum . Fast Food",
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
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      const Image(
                        image: AssetImage("assets/icons/clock.png"),
                        height: 10,
                        width: 10,
                      ),
                      Text(
                        " 20 min . ",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            height: 1.2,
                          ),
                        ),
                      ),
                      const Image(
                        image: AssetImage("assets/icons/bike.png"),
                        height: 10,
                        width: 10,
                      ),
                      Text(
                        " 50 PKR",
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
