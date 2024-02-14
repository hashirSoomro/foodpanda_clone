import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CuisineList extends StatefulWidget {
  const CuisineList({super.key});

  @override
  State<CuisineList> createState() => _CuisineListState();
}

class _CuisineListState extends State<CuisineList> {
  List cuisineImages = [
    "assets/images/pizza.jfif",
    "assets/images/burgers.jfif",
    "assets/images/shawarma.jfif",
    "assets/images/FastFood.jfif",
    "assets/images/parathas.jfif",
    "assets/images/broast.jfif",
    "assets/images/bbq.jfif",
    "assets/images/biryani.jfif",
    "assets/images/ice cream.jfif",
    "assets/images/pasta.jfif",
    "assets/images/chinese.jfif",
    "assets/images/samosa.jfif",
    "assets/images/pulao.jfif",
    "assets/images/nihari.jfif",
  ];
  List cuisines = [
    "Pizza",
    "Burgers",
    "Shawarma",
    "Fast Food",
    "Paratha",
    "Broast",
    "BBQ",
    "Biryani",
    "Ice Cream",
    "Pasta",
    "Chinese",
    "Samosa",
    "Pulao",
    "Nihari"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: ((context, index) {
        return Column(
          children: [
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
                          image: AssetImage(cuisineImages[index]),
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
                      cuisines[index],
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
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
                          image: AssetImage(cuisineImages[index + 7]),
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
                      cuisines[index + 7],
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        );
      }),
    );
  }
}
