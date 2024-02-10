import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDeliveryCard extends StatefulWidget {
  const FoodDeliveryCard({super.key});

  @override
  State<FoodDeliveryCard> createState() => _FoodDeliveryCardState();
}

class _FoodDeliveryCardState extends State<FoodDeliveryCard> {
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
              "Food delivery",
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
              "Order food you love",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Image.asset("assets/images/biryani.jpg",
                width: MediaQuery.of(context).size.width * 0.4, height: 158)
          ],
        ),
      ),
    );
  }
}
