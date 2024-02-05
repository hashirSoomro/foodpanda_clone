import 'package:flutter/material.dart';
import 'package:foodpanda_clone/circleIcon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodpanda_clone/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Panda',
      theme: ThemeData(
        primarySwatch: myColour,
      ),
      home: const MyHomePage(title: 'Food Panda'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
  List shopsImages = [
    "assets/images/be.png",
    "assets/images/rahima.jfif",
    "assets/images/pandamart-johar.jfif"
  ];
  List shops = ["Be Mart", "Rahima General\nStore", "Pandamart -\nJohar"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shangrilla Tower B1/103",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.2,
                ),
              ),
            ),
            Text(
              "Karachi",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1.2,
                ),
              ),
            )
          ],
        ),
        actions: [
          CircleIcon(
            img: 'assets/icons/heart.png',
            onPressed: () {},
          ),
          CircleIcon(
            img: 'assets/icons/cart.png',
            onPressed: () {},
          )
        ],
        backgroundColor: myColour[500],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.white,
        shape: BeveledRectangleBorder(),
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: myColour[500]),
              child: Text("Hashir"),
            ),
            ListTile(
              title: Text("Become a pandapro"),
              onTap: () {},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 2),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(color: myColour[500]),
                  height: 60,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 14, right: 14, bottom: 14),
                    child: GestureDetector(
                      child: TextField(
                          obscureText: false, //"widget.obscureText",
                          cursorColor: myColour[500],
                          decoration: InputDecoration(
                            prefixIcon: CircleIcon(
                                img: "assets/icons/search.png",
                                onPressed: () {}),
                            prefixIconColor: Colors.black,
                            prefixIconConstraints: BoxConstraints(),
                            focusColor: Colors.white,
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Search for shops & restaurants",
                            hintStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF002055),
                            ),
                          )),
                      onTap: () {},
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Card(
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
                                    SizedBox(
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
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Image.asset("assets/images/biryani.jpg",
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        height: 158)
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Card(
                                  shadowColor: Colors.white,
                                  surfaceTintColor: Colors.white,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                        Image.asset(
                                            "assets/images/pandamart.jpg",
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            height: 60)
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  shadowColor: Colors.white,
                                  surfaceTintColor: Colors.white,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Shops",
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
                                              "Top Brands to\nyour door",
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
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset("assets/images/shirt.jpg",
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.15,
                                            height: 35)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Card(
                              shadowColor: Colors.white,
                              surfaceTintColor: Colors.white,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Pick-up",
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
                                          "Self-collect for\n50% off",
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
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset("assets/images/pickup.jpg",
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.13,
                                        height: 44)
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              shadowColor: Colors.white,
                              surfaceTintColor: Colors.white,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dine-in",
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
                                          "Go out to eat\nfor 25% off",
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
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset("assets/images/plate.jpg",
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height: 44)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Card(
                              shadowColor: Colors.white,
                              surfaceTintColor: Colors.white,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Catering",
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
                                          "Plan events\nwith ease",
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
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset("assets/images/dessert.jpg",
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height: 44)
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              shadowColor: Colors.white,
                              surfaceTintColor: Colors.white,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "pandago",
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
                                          "Send parcels\nin a tap",
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
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset("assets/images/pandago.jpg",
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height: 44)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Popular restaurants",
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
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 30,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 12),
                              height: 104,
                              width: 210,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/burger.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.transparent),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 210,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                      Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                "assets/icons/star.png"),
                                            height: 10,
                                            width: 10,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "4.4",
                                            style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                                height: 1.2,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "(5000+)",
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
                                  SizedBox(
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
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            "assets/icons/clock.png"),
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
                                      Image(
                                        image:
                                            AssetImage("assets/icons/bike.png"),
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
                      );
                    }),
                  ),
                )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Cuisines",
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
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
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
                                      margin: const EdgeInsets.only(
                                          left: 6, right: 6),
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage(cuisineImages[index]),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.transparent),
                                      ),
                                    ),
                                    SizedBox(
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
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 6, right: 6),
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              cuisineImages[index + 7]),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.transparent),
                                      ),
                                    ),
                                    SizedBox(
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
                          ],
                        );
                      }),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Popular shops",
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
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: ListView.builder(
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
                                      margin: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(shopsImages[index]),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.transparent),
                                      ),
                                    ),
                                    SizedBox(
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
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
