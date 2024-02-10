import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopsList extends StatefulWidget {
  const ShopsList({super.key});

  @override
  State<ShopsList> createState() => _ShopsListState();
}

class _ShopsListState extends State<ShopsList> {
  List shopsImages = [
    "assets/images/be.png",
    "assets/images/rahima.jfif",
    "assets/images/pandamart-johar.jfif"
  ];
  List shops = ["Be Mart", "Rahima General\nStore", "Pandamart -\nJohar"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: ((context, index) {
        return InkWell(
          onTap: () {},
          child: Column(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
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
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "35 mins",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          height: 1.2,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
            ],
          ),
        );
      }),
    );
  }
}
